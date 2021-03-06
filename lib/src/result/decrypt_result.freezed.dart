// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'decrypt_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DecryptResultTearOff {
  const _$DecryptResultTearOff();

  _DecryptResult call({required Uint8List data, required String? filename}) {
    return _DecryptResult(
      data: data,
      filename: filename,
    );
  }
}

/// @nodoc
const $DecryptResult = _$DecryptResultTearOff();

/// @nodoc
mixin _$DecryptResult {
  Uint8List get data => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DecryptResultCopyWith<DecryptResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptResultCopyWith<$Res> {
  factory $DecryptResultCopyWith(
          DecryptResult value, $Res Function(DecryptResult) then) =
      _$DecryptResultCopyWithImpl<$Res>;
  $Res call({Uint8List data, String? filename});
}

/// @nodoc
class _$DecryptResultCopyWithImpl<$Res>
    implements $DecryptResultCopyWith<$Res> {
  _$DecryptResultCopyWithImpl(this._value, this._then);

  final DecryptResult _value;
  // ignore: unused_field
  final $Res Function(DecryptResult) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? filename = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DecryptResultCopyWith<$Res>
    implements $DecryptResultCopyWith<$Res> {
  factory _$DecryptResultCopyWith(
          _DecryptResult value, $Res Function(_DecryptResult) then) =
      __$DecryptResultCopyWithImpl<$Res>;
  @override
  $Res call({Uint8List data, String? filename});
}

/// @nodoc
class __$DecryptResultCopyWithImpl<$Res>
    extends _$DecryptResultCopyWithImpl<$Res>
    implements _$DecryptResultCopyWith<$Res> {
  __$DecryptResultCopyWithImpl(
      _DecryptResult _value, $Res Function(_DecryptResult) _then)
      : super(_value, (v) => _then(v as _DecryptResult));

  @override
  _DecryptResult get _value => super._value as _DecryptResult;

  @override
  $Res call({
    Object? data = freezed,
    Object? filename = freezed,
  }) {
    return _then(_DecryptResult(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DecryptResult with DiagnosticableTreeMixin implements _DecryptResult {
  const _$_DecryptResult({required this.data, required this.filename});

  @override
  final Uint8List data;
  @override
  final String? filename;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptResult(data: $data, filename: $filename)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DecryptResult'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('filename', filename));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DecryptResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(filename);

  @JsonKey(ignore: true)
  @override
  _$DecryptResultCopyWith<_DecryptResult> get copyWith =>
      __$DecryptResultCopyWithImpl<_DecryptResult>(this, _$identity);
}

abstract class _DecryptResult implements DecryptResult {
  const factory _DecryptResult(
      {required Uint8List data, required String? filename}) = _$_DecryptResult;

  @override
  Uint8List get data => throw _privateConstructorUsedError;
  @override
  String? get filename => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DecryptResultCopyWith<_DecryptResult> get copyWith =>
      throw _privateConstructorUsedError;
}
