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
