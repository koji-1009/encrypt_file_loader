import 'dart:io';

import 'package:flutter/foundation.dart';

import 'moor/filename.dart';
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
  Future<LoadResult> load(String url) async {
    final cache = await _db.getFile(url);
    if (cache != null) {
      return LoadResult.cached;
    }

    try {
      final request = await _client.getUrl(Uri.parse(url));
      final response = await request.close();
      if (response.statusCode == 200) {
        final bytes = await consolidateHttpClientResponseBytes(response);
        final entry = createEntity(
          url: url,
          bytes: bytes,
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

  /// Get file from db, and decrypt by [CryptoType].
  Future<File?> getFile({
    required String url,
    required CryptoType type,
  }) async {
    final cache = await _db.getFile(url);
    if (cache == null) {
      return null;
    }

    return type.decrypt(cache.bytes);
  }
}
