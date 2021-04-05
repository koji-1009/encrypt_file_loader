import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webcrypto/webcrypto.dart';

import '../result/decrypt_result.dart';

part 'crypto_type.freezed.dart';

/// A type of encryption based on Web Crypto.
/// see: https://pub.dev/packages/webcrypto
@freezed
class CryptoType with _$CryptoType {
  /// non-encrypted file
  const factory CryptoType.plain() = TypePlain;

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
    List<int>? additionalData,
    int? tagLength,
  }) = TypeAesGcm;
}

/// extension
extension CryptoTypeExt on CryptoType {
  /// Decrypt [Uint8List] and create [File].
  Future<DecryptResult> decrypt({
    required Uint8List bytes,
    required String? filename,
  }) async {
    final data = await when(
      plain: () async => bytes,
      aesCbc: (key, iv) => key.decryptBytes(bytes, iv),
      aesCtr: (key, counter, length) =>
          key.decryptBytes(bytes, counter, length),
      aesGcm: (key, iv, data, tag) =>
          key.decryptBytes(bytes, iv, additionalData: data, tagLength: tag),
    );

    return DecryptResult(
      data: data,
      filename: filename,
    );
  }
}
