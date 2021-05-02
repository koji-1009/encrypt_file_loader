import 'dart:io';

import 'package:flutter/foundation.dart';

import 'moor/filename.dart';
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
  final _client = HttpClient();

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
      final request = await _client.getUrl(Uri.parse(url));
      final response = await request.close();
      if (response.statusCode == 200) {
        final bytes = await consolidateHttpClientResponseBytes(response);

        String? filename;
        final disposition = response.headers['Content-Disposition']?.toString();
        if (disposition != null) {
          final reg = RegExp('''/filename[^;=\n]*=((['"]).*?\2|[^;\n]*)/''');
          final match = reg.firstMatch(disposition);
          filename = match?[0];
        }

        final entry = createEntity(
          url: url,
          group: group,
          bytes: bytes,
          filename: filename,
        );
        _db.insertCache(entry);

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
  Future deleteAllFiles() async {
    await _db.deleteAll();
  }

  /// Delete files older than the [base].
  Future deleteOldFiles(DateTime base) async {
    await _db.deleteOldFiles(base);
  }
}
