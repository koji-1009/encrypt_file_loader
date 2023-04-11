import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'drift/filename.dart';
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
  final _db = Database();

  /// Load file from server or internal db.
  Future<LoadResult> load({
    required String url,
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
          bytes: response.bodyBytes,
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
