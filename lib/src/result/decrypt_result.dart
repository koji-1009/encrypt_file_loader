import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

/// Decrypted result from db
@immutable
class DecryptResult with EquatableMixin {
  /// result
  const DecryptResult({
    required this.data,
    required this.filename,
  });

  final Uint8List data;
  final String? filename;

  @override
  List<Object?> get props => [data, filename];
}
