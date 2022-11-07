import 'dart:io';

import 'package:encrypt_file_loader/src/isar/cache.dart';
import 'package:encrypt_file_loader/src/isar/db/connection.dart';
import 'package:http/http.dart' as http;
import 'package:isar/isar.dart';

import 'result/decrypt_result.dart';
import 'webcrypto/crypto_type.dart';

/// Result pattern on [EncryptFileLoader.load]
enum LoadResult {
  /// data is cached
  cached,

  /// data is loaded from server
  load,

  /// failed request
  failed,

  /// SocketException
  connectionError,

  /// HttpException
  urlError,

  /// FormatException
  formatError,
}

/// [EncryptFileLoader] is a class that loads, caches, and decrypts.
class EncryptFileLoader {
  /// Load file from server or internal db.
  Future<LoadResult> load({
    required String url,
    String group = 'no_group',
  }) async {
    final isar = await Connection.instance;
    final cache = await isar.caches.filter().urlEqualTo(url).findFirst();
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

        final entry = Caches(
          url: url,
          group: group,
          bytes: response.bodyBytes,
          filename: filename,
          updated: DateTime.now().toUtc(),
        );
        await isar.writeTxn(() async {
          await isar.caches.put(entry);
        });

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
    final isar = await Connection.instance;
    final cache = await isar.caches.filter().urlEqualTo(url).findFirst();
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
  Future<void> deleteAll() async {
    final isar = await Connection.instance;
    return await isar.writeTxn(
      () async => await isar.clear(),
    );
  }

  /// Delete files that belong to the [group].
  /// Returns the amount of rows that were deleted.
  Future<int> deleteGroup(String group) async {
    final isar = await Connection.instance;
    return await isar.writeTxn(
      () async => await isar.caches.filter().groupEqualTo(group).deleteAll(),
    );
  }

  /// Delete files older than the [base].
  /// Returns the amount of rows that were deleted.
  Future<int> deleteOldFiles(DateTime base) async {
    final isar = await Connection.instance;
    return await isar.writeTxn(
      () async => await isar.caches.filter().updatedLessThan(base).deleteAll(),
    );
  }
}
