// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'crypto_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CryptoTypeTearOff {
  const _$CryptoTypeTearOff();

  TypeRsaPss rsaPss({required RsaPssPrivateKey key, required int saltLength}) {
    return TypeRsaPss(
      key: key,
      saltLength: saltLength,
    );
  }

  TypeHash hash({required Hash key}) {
    return TypeHash(
      key: key,
    );
  }
}

/// @nodoc
const $CryptoType = _$CryptoTypeTearOff();

/// @nodoc
mixin _$CryptoType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RsaPssPrivateKey key, int saltLength) rsaPss,
    required TResult Function(Hash key) hash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RsaPssPrivateKey key, int saltLength)? rsaPss,
    TResult Function(Hash key)? hash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypeRsaPss value) rsaPss,
    required TResult Function(TypeHash value) hash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypeRsaPss value)? rsaPss,
    TResult Function(TypeHash value)? hash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoTypeCopyWith<$Res> {
  factory $CryptoTypeCopyWith(
          CryptoType value, $Res Function(CryptoType) then) =
      _$CryptoTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoTypeCopyWithImpl<$Res> implements $CryptoTypeCopyWith<$Res> {
  _$CryptoTypeCopyWithImpl(this._value, this._then);

  final CryptoType _value;
  // ignore: unused_field
  final $Res Function(CryptoType) _then;
}

/// @nodoc
abstract class $TypeRsaPssCopyWith<$Res> {
  factory $TypeRsaPssCopyWith(
          TypeRsaPss value, $Res Function(TypeRsaPss) then) =
      _$TypeRsaPssCopyWithImpl<$Res>;
  $Res call({RsaPssPrivateKey key, int saltLength});
}

/// @nodoc
class _$TypeRsaPssCopyWithImpl<$Res> extends _$CryptoTypeCopyWithImpl<$Res>
    implements $TypeRsaPssCopyWith<$Res> {
  _$TypeRsaPssCopyWithImpl(TypeRsaPss _value, $Res Function(TypeRsaPss) _then)
      : super(_value, (v) => _then(v as TypeRsaPss));

  @override
  TypeRsaPss get _value => super._value as TypeRsaPss;

  @override
  $Res call({
    Object? key = freezed,
    Object? saltLength = freezed,
  }) {
    return _then(TypeRsaPss(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as RsaPssPrivateKey,
      saltLength: saltLength == freezed
          ? _value.saltLength
          : saltLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$TypeRsaPss with DiagnosticableTreeMixin implements TypeRsaPss {
  const _$TypeRsaPss({required this.key, required this.saltLength});

  @override
  final RsaPssPrivateKey key;
  @override
  final int saltLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.rsaPss(key: $key, saltLength: $saltLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.rsaPss'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('saltLength', saltLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeRsaPss &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.saltLength, saltLength) ||
                const DeepCollectionEquality()
                    .equals(other.saltLength, saltLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(saltLength);

  @JsonKey(ignore: true)
  @override
  $TypeRsaPssCopyWith<TypeRsaPss> get copyWith =>
      _$TypeRsaPssCopyWithImpl<TypeRsaPss>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RsaPssPrivateKey key, int saltLength) rsaPss,
    required TResult Function(Hash key) hash,
  }) {
    return rsaPss(key, saltLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RsaPssPrivateKey key, int saltLength)? rsaPss,
    TResult Function(Hash key)? hash,
    required TResult orElse(),
  }) {
    if (rsaPss != null) {
      return rsaPss(key, saltLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypeRsaPss value) rsaPss,
    required TResult Function(TypeHash value) hash,
  }) {
    return rsaPss(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypeRsaPss value)? rsaPss,
    TResult Function(TypeHash value)? hash,
    required TResult orElse(),
  }) {
    if (rsaPss != null) {
      return rsaPss(this);
    }
    return orElse();
  }
}

abstract class TypeRsaPss implements CryptoType {
  const factory TypeRsaPss(
      {required RsaPssPrivateKey key, required int saltLength}) = _$TypeRsaPss;

  RsaPssPrivateKey get key => throw _privateConstructorUsedError;
  int get saltLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeRsaPssCopyWith<TypeRsaPss> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeHashCopyWith<$Res> {
  factory $TypeHashCopyWith(TypeHash value, $Res Function(TypeHash) then) =
      _$TypeHashCopyWithImpl<$Res>;
  $Res call({Hash key});
}

/// @nodoc
class _$TypeHashCopyWithImpl<$Res> extends _$CryptoTypeCopyWithImpl<$Res>
    implements $TypeHashCopyWith<$Res> {
  _$TypeHashCopyWithImpl(TypeHash _value, $Res Function(TypeHash) _then)
      : super(_value, (v) => _then(v as TypeHash));

  @override
  TypeHash get _value => super._value as TypeHash;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(TypeHash(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Hash,
    ));
  }
}

/// @nodoc
class _$TypeHash with DiagnosticableTreeMixin implements TypeHash {
  const _$TypeHash({required this.key});

  @override
  final Hash key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.hash(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.hash'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeHash &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  $TypeHashCopyWith<TypeHash> get copyWith =>
      _$TypeHashCopyWithImpl<TypeHash>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RsaPssPrivateKey key, int saltLength) rsaPss,
    required TResult Function(Hash key) hash,
  }) {
    return hash(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RsaPssPrivateKey key, int saltLength)? rsaPss,
    TResult Function(Hash key)? hash,
    required TResult orElse(),
  }) {
    if (hash != null) {
      return hash(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypeRsaPss value) rsaPss,
    required TResult Function(TypeHash value) hash,
  }) {
    return hash(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypeRsaPss value)? rsaPss,
    TResult Function(TypeHash value)? hash,
    required TResult orElse(),
  }) {
    if (hash != null) {
      return hash(this);
    }
    return orElse();
  }
}

abstract class TypeHash implements CryptoType {
  const factory TypeHash({required Hash key}) = _$TypeHash;

  Hash get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeHashCopyWith<TypeHash> get copyWith =>
      throw _privateConstructorUsedError;
}
