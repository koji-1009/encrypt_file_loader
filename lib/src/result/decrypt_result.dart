import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decrypt_result.freezed.dart';

/// Decrypted result from db
@freezed
class DecryptResult with _$DecryptResult {
  /// result
  const factory DecryptResult({
    required Uint8List data,
    required String? filename,
  }) = _DecryptResult;
}
