import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webcrypto/webcrypto.dart';

part 'crypto_type.freezed.dart';

/// A type of encryption based on Web Crypto.
/// see: https://pub.dev/packages/webcrypto
@freezed
abstract class CryptoType with _$CryptoType {
  /// see [RsaPssPrivateKey]
  const factory CryptoType.rsaPss({
    required RsaPssPrivateKey key,
    required int saltLength,
  }) = TypeRsaPss;

  /// see [Hash]
  const factory CryptoType.hash({
    required Hash key,
  }) = TypeHash;
}

/// extension
extension CryptoTypeExt on CryptoType {
  /// Decrypt [Uint8List] and create [File].
  Future<File> decrypt(Uint8List bytes) async {
    final raw = await when(
      rsaPss: (key, saltLength) => key.signBytes(bytes, saltLength),
      hash: (key) => key.digestBytes(bytes),
    );

    return File.fromRawPath(raw);
  }
}
