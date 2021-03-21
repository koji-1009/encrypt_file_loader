import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webcrypto/webcrypto.dart';

part 'crypto_type.freezed.dart';

/// A type of encryption based on Web Crypto.
/// see: https://pub.dev/packages/webcrypto
@freezed
class CryptoType with _$CryptoType {
  /// see [AesCbcSecretKey]
  const factory CryptoType.aesCbc({
    required AesCbcSecretKey key,
    required Uint8List iv,
  }) = TypeAesCbc;

  /// see [AesCtrSecretKey]
  const factory CryptoType.aesCtr({
    required AesCtrSecretKey key,
    required List<int> counter,
    required int length,
  }) = TypeAesCtr;

  /// see [AesGcmSecretKey]
  const factory CryptoType.aesGcm({
    required AesGcmSecretKey key,
    required Uint8List iv,
  }) = TypeAesGcm;
}

/// extension
extension CryptoTypeExt on CryptoType {
  /// Decrypt [Uint8List] and create [File].
  Future<File> decrypt({
    required Uint8List bytes,
    required String? filename,
  }) async {
    final raw = await when(
      aesCbc: (key, iv) => key.decryptBytes(bytes, iv),
      aesCtr: (key, counter, length) =>
          key.decryptBytes(bytes, counter, length),
      aesGcm: (key, iv) => key.decryptBytes(bytes, iv),
    );

    final file = File.fromRawPath(raw);
    if (filename != null) {
      return await file.rename(filename);
    }

    return file;
  }
}
