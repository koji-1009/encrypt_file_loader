import 'dart:io';

import 'package:encrypt_file_loader/src/result/decrypt_result.dart';
import 'package:flutter/foundation.dart';
import 'package:webcrypto/webcrypto.dart';

/// A type of encryption based on Web Crypto.
/// see: [https://pub.dev/packages/webcrypto]
sealed class CryptoType {}

/// non-encrypted file
@immutable
class TypePlain implements CryptoType {
  const TypePlain();
}

/// see [AesCbcSecretKey]
@immutable
class TypeAesCbc implements CryptoType {
  const TypeAesCbc({
    required this.key,
    required this.iv,
  });

  final AesCbcSecretKey key;
  final Uint8List iv;
}

/// see [AesCtrSecretKey]
@immutable
class TypeAesCtr implements CryptoType {
  const TypeAesCtr({
    required this.key,
    required this.counter,
    required this.length,
  });

  final AesCtrSecretKey key;
  final List<int> counter;
  final int length;
}

/// see [AesGcmSecretKey]
@immutable
class TypeAesGcm implements CryptoType {
  const TypeAesGcm({
    required this.key,
    required this.iv,
    this.authTag,
    this.additionalData,
    this.tagLength,
  });

  final AesGcmSecretKey key;
  final Uint8List iv;
  final List<int>? authTag;
  final List<int>? additionalData;
  final int? tagLength;
}

/// see [RsaOaepPrivateKey]
@immutable
class TypeRsaOaep implements CryptoType {
  const TypeRsaOaep({
    required this.key,
    this.label,
  });

  final RsaOaepPrivateKey key;
  final List<int>? label;
}

/// extension
extension CryptoTypeExt on CryptoType {
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

    return DecryptResult(
      data: Uint8List.fromList(data),
      filename: filename,
    );
  }
}
