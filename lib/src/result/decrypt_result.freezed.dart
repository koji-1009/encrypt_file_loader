// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decrypt_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$DecryptResultCopyWithImpl<$Res, DecryptResult>;
  @useResult
  $Res call({Uint8List data, String? filename});
}

/// @nodoc
class _$DecryptResultCopyWithImpl<$Res, $Val extends DecryptResult>
    implements $DecryptResultCopyWith<$Res> {
  _$DecryptResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? filename = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DecryptResultCopyWith<$Res>
    implements $DecryptResultCopyWith<$Res> {
  factory _$$_DecryptResultCopyWith(
          _$_DecryptResult value, $Res Function(_$_DecryptResult) then) =
      __$$_DecryptResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List data, String? filename});
}

/// @nodoc
class __$$_DecryptResultCopyWithImpl<$Res>
    extends _$DecryptResultCopyWithImpl<$Res, _$_DecryptResult>
    implements _$$_DecryptResultCopyWith<$Res> {
  __$$_DecryptResultCopyWithImpl(
      _$_DecryptResult _value, $Res Function(_$_DecryptResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? filename = freezed,
  }) {
    return _then(_$_DecryptResult(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      filename: freezed == filename
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
        (other.runtimeType == runtimeType &&
            other is _$_DecryptResult &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecryptResultCopyWith<_$_DecryptResult> get copyWith =>
      __$$_DecryptResultCopyWithImpl<_$_DecryptResult>(this, _$identity);
}

abstract class _DecryptResult implements DecryptResult {
  const factory _DecryptResult(
      {required final Uint8List data,
      required final String? filename}) = _$_DecryptResult;

  @override
  Uint8List get data;
  @override
  String? get filename;
  @override
  @JsonKey(ignore: true)
  _$$_DecryptResultCopyWith<_$_DecryptResult> get copyWith =>
      throw _privateConstructorUsedError;
}
