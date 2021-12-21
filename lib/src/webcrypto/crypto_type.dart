import 'dart:io';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    required AesCbc key,
    required Uint8List iv,
    required SecretKey secretKey,
  }) = TypeAesCbc;

  /// see [AesCtrSecretKey]
  const factory CryptoType.aesCtr({
    required AesCtr key,
    required Uint8List iv,
    required SecretKey secretKey,
  }) = TypeAesCtr;

  /// see [AesGcmSecretKey]
  const factory CryptoType.aesGcm({
    required AesGcm key,
    required Uint8List iv,
    required SecretKey secretKey,
    @Default([]) List<int> aad,
    Uint8List? tag,
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
      aesCbc: (key, iv, secretKey) async => Uint8List.fromList(
        await key.decrypt(
          SecretBox(
            Uint8List.sublistView(bytes, 0, bytes.lengthInBytes - 16),
            nonce: iv,
            mac: Mac(Uint8List.sublistView(bytes, bytes.lengthInBytes - 16)),
          ),
          secretKey: secretKey,
        ),
      ),
      aesCtr: (key, iv, secretKey) async => Uint8List.fromList(
        await key.decrypt(
          SecretBox(
            Uint8List.sublistView(bytes, 0, bytes.lengthInBytes - 16),
            nonce: iv,
            mac: Mac(Uint8List.sublistView(bytes, bytes.lengthInBytes - 16)),
          ),
          secretKey: secretKey,
        ),
      ),
      aesGcm: (key, iv, secretKey, aad, tag) async => Uint8List.fromList(
        await key.decrypt(
          SecretBox(
            bytes,
            nonce: iv,
            mac: Mac(tag ?? []),
          ),
          secretKey: secretKey,
          aad: aad,
        ),
      ),
    );

    return DecryptResult(
      data: data,
      filename: filename,
    );
  }
}
