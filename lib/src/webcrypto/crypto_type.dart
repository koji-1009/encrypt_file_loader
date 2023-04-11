import 'dart:io';

import 'package:encrypt_file_loader/src/result/decrypt_result.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webcrypto/webcrypto.dart';

part 'crypto_type.freezed.dart';

/// A type of encryption based on Web Crypto.
/// see: [https://pub.dev/packages/webcrypto]
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
    List<int>? authTag,
    List<int>? additionalData,
    int? tagLength,
  }) = TypeAesGcm;

  /// see [RsaOaepPrivateKey]
  const factory CryptoType.rsaOaep({
    required RsaOaepPrivateKey key,
    List<int>? label,
  }) = TypeRsaOaep;
}

/// extension
extension CryptoTypeExt on CryptoType {
  /// Decrypt [Uint8List] and create [File].
  Future<DecryptResult> decrypt({
    required List<int> bytes,
    required String? filename,
  }) async {
    final data = await when(
      plain: () async => bytes,
      aesCbc: (key, iv) async => key.decryptBytes(
        bytes,
        iv,
      ),
      aesCtr: (key, counter, length) async => key.decryptBytes(
        bytes,
        counter,
        length,
      ),
      aesGcm: (key, iv, authTag, additionalData, tagLength) async =>
          key.decryptBytes(
        bytes + (authTag ?? []),
        iv,
        additionalData: additionalData,
        tagLength: tagLength,
      ),
      rsaOaep: (key, label) async => key.decryptBytes(
        bytes,
        label: label,
      ),
    );

    return DecryptResult(
      data: Uint8List.fromList(data),
      filename: filename,
    );
  }
}
