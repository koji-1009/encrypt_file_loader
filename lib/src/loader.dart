import 'dart:convert';
import 'dart:io';

import 'package:encrypt_file_loader/src/crypto_type.dart';
import 'package:encrypt_file_loader/src/drift/filename.dart';
import 'package:encrypt_file_loader/src/result.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// Decrypted result from db
typedef DecryptResult = ({
  Uint8List data,
  String? filename,
});

/// Encrypted data is retrieved in the response
enum ResponseType {
  bodyBytes,
  bodyText,
}

/// [EncryptFileLoader] is a class that loads, caches, and decrypts.
class EncryptFileLoader {
  EncryptFileLoader();

  final _db = Database();

  Future<LoaderResult> loadAndDecrypt({
    required String url,
    required CryptoType type,
    ResponseType responseType = ResponseType.bodyBytes,
    String group = 'no_group',
  }) async {
    final result = await load(
      url: url,
      group: group,
      responseType: responseType,
    );
    switch (result) {
      case LoadResult.cached:
      case LoadResult.load:
        final result = await getData(
          url: url,
          type: type,
        );
        if (result == null) {
          return const LoaderEmpty();
        }

        return LoaderSuccess(
          data: result.data,
          filename: result.filename,
        );
      case LoadResult.failed:
        return const LoaderFailed();
      case LoadResult.connectionError:
        return const LoaderConnectionError();
      case LoadResult.urlError:
        return const LoaderUrlError();
      case LoadResult.formatError:
        return const LoaderFormatError();
    }
  }

  /// Load file from server or internal db.
  Future<LoadResult> load({
    required String url,
    ResponseType responseType = ResponseType.bodyBytes,
    String group = 'no_group',
  }) async {
    final cache = await _db.getFile(url);
    if (cache != null) {
      return LoadResult.cached;
    }

    try {
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        String? filename;
        final disposition = response.headers['Content-Disposition']?.toString();
        if (disposition != null) {
          final reg = RegExp('''/filename[^;=\n]*=((['"]).*?2|[^;\n]*)/''');
          final match = reg.firstMatch(disposition);
          filename = match?[0];
        } else {
          filename = uri.pathSegments.last;
        }

        final entry = createEntity(
          url: url,
          group: group,
          bytes: switch (responseType) {
            ResponseType.bodyBytes => response.bodyBytes,
            ResponseType.bodyText => Uint8List.fromList(
                json.decode(response.body).cast<int>(),
              ),
          },
          filename: filename,
        );
        await _db.insertCache(entry);

        return LoadResult.load;
      }
    } on SocketException {
      return LoadResult.connectionError;
    } on HttpException {
      return LoadResult.urlError;
    } on FormatException {
      return LoadResult.formatError;
    }

    return LoadResult.failed;
  }

  /// Get [DecryptResult] from db, and decrypt by [CryptoType].
  Future<DecryptResult?> getData({
    required String url,
    required CryptoType type,
  }) async {
    final cache = await _db.getFile(url);
    if (cache == null) {
      return null;
    }

    return type.decrypt(
      bytes: cache.bytes,
      filename: cache.filename,
    );
  }

  /// Delete all files.
  /// Returns the amount of rows that were deleted.
  Future<int> deleteAll() async {
    return await _db.deleteAll();
  }

  /// Delete files that belong to the [group].
  /// Returns the amount of rows that were deleted.
  Future<int> deleteGroup(String group) async {
    return await _db.deleteGroup(group);
  }

  /// Delete files older than the [base].
  /// Returns the amount of rows that were deleted.
  Future<int> deleteOldFiles(DateTime base) async {
    return await _db.deleteOldFiles(base);
  }

  /// Rebuilds the database file,
  /// repacking it into a minimal amount of disk space.
  Future<void> vacuum() async {
    await compute(_vacuum, _db);
  }
}

/// Run vacuum on background thread.
Future<void> _vacuum(Database db) async {
  await db.customStatement('vacuum;');
}

/// extension
extension on CryptoType {
  /// Decrypt [Uint8List] and create [File].
  Future<DecryptResult> decrypt({
    required List<int> bytes,
    required String? filename,
  }) async {
    final data = switch (this) {
      TypePlain() => bytes,
      TypeAesCbc(
        key: final key,
        iv: final iv,
      ) =>
        await key.decryptBytes(
          bytes,
          iv,
        ),
      TypeAesCtr(
        key: final key,
        counter: final counter,
        length: final length,
      ) =>
        await key.decryptBytes(
          bytes,
          counter,
          length,
        ),
      TypeAesGcm(
        key: final key,
        iv: final iv,
        authTag: final authTag,
        additionalData: final additionalData,
        tagLength: final tagLength,
      ) =>
        await key.decryptBytes(
          bytes + (authTag ?? []),
          iv,
          additionalData: additionalData,
          tagLength: tagLength,
        ),
      TypeRsaOaep(
        key: final key,
        label: final label,
      ) =>
        await key.decryptBytes(
          bytes,
          label: label,
        ),
    };

    return (
      data: Uint8List.fromList(data),
      filename: filename,
    );
  }
}
