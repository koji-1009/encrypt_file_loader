// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CryptoType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbcSecretKey key, Uint8List iv) aesCbc,
    required TResult Function(
            AesCtrSecretKey key, List<int> counter, int length)
        aesCtr,
    required TResult Function(AesGcmSecretKey key, Uint8List iv,
            List<int>? authTag, List<int>? additionalData, int? tagLength)
        aesGcm,
    required TResult Function(RsaOaepPrivateKey key, List<int>? label) rsaOaep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult? Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult? Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult? Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypePlain value) plain,
    required TResult Function(TypeAesCbc value) aesCbc,
    required TResult Function(TypeAesCtr value) aesCtr,
    required TResult Function(TypeAesGcm value) aesGcm,
    required TResult Function(TypeRsaOaep value) rsaOaep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypePlain value)? plain,
    TResult? Function(TypeAesCbc value)? aesCbc,
    TResult? Function(TypeAesCtr value)? aesCtr,
    TResult? Function(TypeAesGcm value)? aesGcm,
    TResult? Function(TypeRsaOaep value)? rsaOaep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
    TResult Function(TypeRsaOaep value)? rsaOaep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoTypeCopyWith<$Res> {
  factory $CryptoTypeCopyWith(
          CryptoType value, $Res Function(CryptoType) then) =
      _$CryptoTypeCopyWithImpl<$Res, CryptoType>;
}

/// @nodoc
class _$CryptoTypeCopyWithImpl<$Res, $Val extends CryptoType>
    implements $CryptoTypeCopyWith<$Res> {
  _$CryptoTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TypePlainCopyWith<$Res> {
  factory _$$TypePlainCopyWith(
          _$TypePlain value, $Res Function(_$TypePlain) then) =
      __$$TypePlainCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TypePlainCopyWithImpl<$Res>
    extends _$CryptoTypeCopyWithImpl<$Res, _$TypePlain>
    implements _$$TypePlainCopyWith<$Res> {
  __$$TypePlainCopyWithImpl(
      _$TypePlain _value, $Res Function(_$TypePlain) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TypePlain with DiagnosticableTreeMixin implements TypePlain {
  const _$TypePlain();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.plain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CryptoType.plain'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TypePlain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbcSecretKey key, Uint8List iv) aesCbc,
    required TResult Function(
            AesCtrSecretKey key, List<int> counter, int length)
        aesCtr,
    required TResult Function(AesGcmSecretKey key, Uint8List iv,
            List<int>? authTag, List<int>? additionalData, int? tagLength)
        aesGcm,
    required TResult Function(RsaOaepPrivateKey key, List<int>? label) rsaOaep,
  }) {
    return plain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult? Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult? Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult? Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
  }) {
    return plain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
    required TResult orElse(),
  }) {
    if (plain != null) {
      return plain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypePlain value) plain,
    required TResult Function(TypeAesCbc value) aesCbc,
    required TResult Function(TypeAesCtr value) aesCtr,
    required TResult Function(TypeAesGcm value) aesGcm,
    required TResult Function(TypeRsaOaep value) rsaOaep,
  }) {
    return plain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypePlain value)? plain,
    TResult? Function(TypeAesCbc value)? aesCbc,
    TResult? Function(TypeAesCtr value)? aesCtr,
    TResult? Function(TypeAesGcm value)? aesGcm,
    TResult? Function(TypeRsaOaep value)? rsaOaep,
  }) {
    return plain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
    TResult Function(TypeRsaOaep value)? rsaOaep,
    required TResult orElse(),
  }) {
    if (plain != null) {
      return plain(this);
    }
    return orElse();
  }
}

abstract class TypePlain implements CryptoType {
  const factory TypePlain() = _$TypePlain;
}

/// @nodoc
abstract class _$$TypeAesCbcCopyWith<$Res> {
  factory _$$TypeAesCbcCopyWith(
          _$TypeAesCbc value, $Res Function(_$TypeAesCbc) then) =
      __$$TypeAesCbcCopyWithImpl<$Res>;
  @useResult
  $Res call({AesCbcSecretKey key, Uint8List iv});
}

/// @nodoc
class __$$TypeAesCbcCopyWithImpl<$Res>
    extends _$CryptoTypeCopyWithImpl<$Res, _$TypeAesCbc>
    implements _$$TypeAesCbcCopyWith<$Res> {
  __$$TypeAesCbcCopyWithImpl(
      _$TypeAesCbc _value, $Res Function(_$TypeAesCbc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? iv = null,
  }) {
    return _then(_$TypeAesCbc(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesCbcSecretKey,
      iv: null == iv
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$TypeAesCbc with DiagnosticableTreeMixin implements TypeAesCbc {
  const _$TypeAesCbc({required this.key, required this.iv});

  @override
  final AesCbcSecretKey key;
  @override
  final Uint8List iv;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.aesCbc(key: $key, iv: $iv)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.aesCbc'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('iv', iv));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeAesCbc &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.iv, iv));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(iv));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeAesCbcCopyWith<_$TypeAesCbc> get copyWith =>
      __$$TypeAesCbcCopyWithImpl<_$TypeAesCbc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbcSecretKey key, Uint8List iv) aesCbc,
    required TResult Function(
            AesCtrSecretKey key, List<int> counter, int length)
        aesCtr,
    required TResult Function(AesGcmSecretKey key, Uint8List iv,
            List<int>? authTag, List<int>? additionalData, int? tagLength)
        aesGcm,
    required TResult Function(RsaOaepPrivateKey key, List<int>? label) rsaOaep,
  }) {
    return aesCbc(key, iv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult? Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult? Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult? Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
  }) {
    return aesCbc?.call(key, iv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
    required TResult orElse(),
  }) {
    if (aesCbc != null) {
      return aesCbc(key, iv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypePlain value) plain,
    required TResult Function(TypeAesCbc value) aesCbc,
    required TResult Function(TypeAesCtr value) aesCtr,
    required TResult Function(TypeAesGcm value) aesGcm,
    required TResult Function(TypeRsaOaep value) rsaOaep,
  }) {
    return aesCbc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypePlain value)? plain,
    TResult? Function(TypeAesCbc value)? aesCbc,
    TResult? Function(TypeAesCtr value)? aesCtr,
    TResult? Function(TypeAesGcm value)? aesGcm,
    TResult? Function(TypeRsaOaep value)? rsaOaep,
  }) {
    return aesCbc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
    TResult Function(TypeRsaOaep value)? rsaOaep,
    required TResult orElse(),
  }) {
    if (aesCbc != null) {
      return aesCbc(this);
    }
    return orElse();
  }
}

abstract class TypeAesCbc implements CryptoType {
  const factory TypeAesCbc(
      {required final AesCbcSecretKey key,
      required final Uint8List iv}) = _$TypeAesCbc;

  AesCbcSecretKey get key;
  Uint8List get iv;
  @JsonKey(ignore: true)
  _$$TypeAesCbcCopyWith<_$TypeAesCbc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeAesCtrCopyWith<$Res> {
  factory _$$TypeAesCtrCopyWith(
          _$TypeAesCtr value, $Res Function(_$TypeAesCtr) then) =
      __$$TypeAesCtrCopyWithImpl<$Res>;
  @useResult
  $Res call({AesCtrSecretKey key, List<int> counter, int length});
}

/// @nodoc
class __$$TypeAesCtrCopyWithImpl<$Res>
    extends _$CryptoTypeCopyWithImpl<$Res, _$TypeAesCtr>
    implements _$$TypeAesCtrCopyWith<$Res> {
  __$$TypeAesCtrCopyWithImpl(
      _$TypeAesCtr _value, $Res Function(_$TypeAesCtr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? counter = null,
    Object? length = null,
  }) {
    return _then(_$TypeAesCtr(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesCtrSecretKey,
      counter: null == counter
          ? _value._counter
          : counter // ignore: cast_nullable_to_non_nullable
              as List<int>,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TypeAesCtr with DiagnosticableTreeMixin implements TypeAesCtr {
  const _$TypeAesCtr(
      {required this.key,
      required final List<int> counter,
      required this.length})
      : _counter = counter;

  @override
  final AesCtrSecretKey key;
  final List<int> _counter;
  @override
  List<int> get counter {
    if (_counter is EqualUnmodifiableListView) return _counter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_counter);
  }

  @override
  final int length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.aesCtr(key: $key, counter: $counter, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.aesCtr'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('counter', counter))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeAesCtr &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._counter, _counter) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_counter), length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeAesCtrCopyWith<_$TypeAesCtr> get copyWith =>
      __$$TypeAesCtrCopyWithImpl<_$TypeAesCtr>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbcSecretKey key, Uint8List iv) aesCbc,
    required TResult Function(
            AesCtrSecretKey key, List<int> counter, int length)
        aesCtr,
    required TResult Function(AesGcmSecretKey key, Uint8List iv,
            List<int>? authTag, List<int>? additionalData, int? tagLength)
        aesGcm,
    required TResult Function(RsaOaepPrivateKey key, List<int>? label) rsaOaep,
  }) {
    return aesCtr(key, counter, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult? Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult? Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult? Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
  }) {
    return aesCtr?.call(key, counter, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
    required TResult orElse(),
  }) {
    if (aesCtr != null) {
      return aesCtr(key, counter, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypePlain value) plain,
    required TResult Function(TypeAesCbc value) aesCbc,
    required TResult Function(TypeAesCtr value) aesCtr,
    required TResult Function(TypeAesGcm value) aesGcm,
    required TResult Function(TypeRsaOaep value) rsaOaep,
  }) {
    return aesCtr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypePlain value)? plain,
    TResult? Function(TypeAesCbc value)? aesCbc,
    TResult? Function(TypeAesCtr value)? aesCtr,
    TResult? Function(TypeAesGcm value)? aesGcm,
    TResult? Function(TypeRsaOaep value)? rsaOaep,
  }) {
    return aesCtr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
    TResult Function(TypeRsaOaep value)? rsaOaep,
    required TResult orElse(),
  }) {
    if (aesCtr != null) {
      return aesCtr(this);
    }
    return orElse();
  }
}

abstract class TypeAesCtr implements CryptoType {
  const factory TypeAesCtr(
      {required final AesCtrSecretKey key,
      required final List<int> counter,
      required final int length}) = _$TypeAesCtr;

  AesCtrSecretKey get key;
  List<int> get counter;
  int get length;
  @JsonKey(ignore: true)
  _$$TypeAesCtrCopyWith<_$TypeAesCtr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeAesGcmCopyWith<$Res> {
  factory _$$TypeAesGcmCopyWith(
          _$TypeAesGcm value, $Res Function(_$TypeAesGcm) then) =
      __$$TypeAesGcmCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AesGcmSecretKey key,
      Uint8List iv,
      List<int>? authTag,
      List<int>? additionalData,
      int? tagLength});
}

/// @nodoc
class __$$TypeAesGcmCopyWithImpl<$Res>
    extends _$CryptoTypeCopyWithImpl<$Res, _$TypeAesGcm>
    implements _$$TypeAesGcmCopyWith<$Res> {
  __$$TypeAesGcmCopyWithImpl(
      _$TypeAesGcm _value, $Res Function(_$TypeAesGcm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? iv = null,
    Object? authTag = freezed,
    Object? additionalData = freezed,
    Object? tagLength = freezed,
  }) {
    return _then(_$TypeAesGcm(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesGcmSecretKey,
      iv: null == iv
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      authTag: freezed == authTag
          ? _value._authTag
          : authTag // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      additionalData: freezed == additionalData
          ? _value._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tagLength: freezed == tagLength
          ? _value.tagLength
          : tagLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TypeAesGcm with DiagnosticableTreeMixin implements TypeAesGcm {
  const _$TypeAesGcm(
      {required this.key,
      required this.iv,
      final List<int>? authTag,
      final List<int>? additionalData,
      this.tagLength})
      : _authTag = authTag,
        _additionalData = additionalData;

  @override
  final AesGcmSecretKey key;
  @override
  final Uint8List iv;
  final List<int>? _authTag;
  @override
  List<int>? get authTag {
    final value = _authTag;
    if (value == null) return null;
    if (_authTag is EqualUnmodifiableListView) return _authTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _additionalData;
  @override
  List<int>? get additionalData {
    final value = _additionalData;
    if (value == null) return null;
    if (_additionalData is EqualUnmodifiableListView) return _additionalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? tagLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.aesGcm(key: $key, iv: $iv, authTag: $authTag, additionalData: $additionalData, tagLength: $tagLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.aesGcm'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('iv', iv))
      ..add(DiagnosticsProperty('authTag', authTag))
      ..add(DiagnosticsProperty('additionalData', additionalData))
      ..add(DiagnosticsProperty('tagLength', tagLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeAesGcm &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.iv, iv) &&
            const DeepCollectionEquality().equals(other._authTag, _authTag) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData) &&
            (identical(other.tagLength, tagLength) ||
                other.tagLength == tagLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      const DeepCollectionEquality().hash(iv),
      const DeepCollectionEquality().hash(_authTag),
      const DeepCollectionEquality().hash(_additionalData),
      tagLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeAesGcmCopyWith<_$TypeAesGcm> get copyWith =>
      __$$TypeAesGcmCopyWithImpl<_$TypeAesGcm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbcSecretKey key, Uint8List iv) aesCbc,
    required TResult Function(
            AesCtrSecretKey key, List<int> counter, int length)
        aesCtr,
    required TResult Function(AesGcmSecretKey key, Uint8List iv,
            List<int>? authTag, List<int>? additionalData, int? tagLength)
        aesGcm,
    required TResult Function(RsaOaepPrivateKey key, List<int>? label) rsaOaep,
  }) {
    return aesGcm(key, iv, authTag, additionalData, tagLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult? Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult? Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult? Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
  }) {
    return aesGcm?.call(key, iv, authTag, additionalData, tagLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
    required TResult orElse(),
  }) {
    if (aesGcm != null) {
      return aesGcm(key, iv, authTag, additionalData, tagLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypePlain value) plain,
    required TResult Function(TypeAesCbc value) aesCbc,
    required TResult Function(TypeAesCtr value) aesCtr,
    required TResult Function(TypeAesGcm value) aesGcm,
    required TResult Function(TypeRsaOaep value) rsaOaep,
  }) {
    return aesGcm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypePlain value)? plain,
    TResult? Function(TypeAesCbc value)? aesCbc,
    TResult? Function(TypeAesCtr value)? aesCtr,
    TResult? Function(TypeAesGcm value)? aesGcm,
    TResult? Function(TypeRsaOaep value)? rsaOaep,
  }) {
    return aesGcm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
    TResult Function(TypeRsaOaep value)? rsaOaep,
    required TResult orElse(),
  }) {
    if (aesGcm != null) {
      return aesGcm(this);
    }
    return orElse();
  }
}

abstract class TypeAesGcm implements CryptoType {
  const factory TypeAesGcm(
      {required final AesGcmSecretKey key,
      required final Uint8List iv,
      final List<int>? authTag,
      final List<int>? additionalData,
      final int? tagLength}) = _$TypeAesGcm;

  AesGcmSecretKey get key;
  Uint8List get iv;
  List<int>? get authTag;
  List<int>? get additionalData;
  int? get tagLength;
  @JsonKey(ignore: true)
  _$$TypeAesGcmCopyWith<_$TypeAesGcm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeRsaOaepCopyWith<$Res> {
  factory _$$TypeRsaOaepCopyWith(
          _$TypeRsaOaep value, $Res Function(_$TypeRsaOaep) then) =
      __$$TypeRsaOaepCopyWithImpl<$Res>;
  @useResult
  $Res call({RsaOaepPrivateKey key, List<int>? label});
}

/// @nodoc
class __$$TypeRsaOaepCopyWithImpl<$Res>
    extends _$CryptoTypeCopyWithImpl<$Res, _$TypeRsaOaep>
    implements _$$TypeRsaOaepCopyWith<$Res> {
  __$$TypeRsaOaepCopyWithImpl(
      _$TypeRsaOaep _value, $Res Function(_$TypeRsaOaep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = freezed,
  }) {
    return _then(_$TypeRsaOaep(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as RsaOaepPrivateKey,
      label: freezed == label
          ? _value._label
          : label // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$TypeRsaOaep with DiagnosticableTreeMixin implements TypeRsaOaep {
  const _$TypeRsaOaep({required this.key, final List<int>? label})
      : _label = label;

  @override
  final RsaOaepPrivateKey key;
  final List<int>? _label;
  @override
  List<int>? get label {
    final value = _label;
    if (value == null) return null;
    if (_label is EqualUnmodifiableListView) return _label;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.rsaOaep(key: $key, label: $label)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.rsaOaep'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('label', label));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeRsaOaep &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._label, _label));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_label));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeRsaOaepCopyWith<_$TypeRsaOaep> get copyWith =>
      __$$TypeRsaOaepCopyWithImpl<_$TypeRsaOaep>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbcSecretKey key, Uint8List iv) aesCbc,
    required TResult Function(
            AesCtrSecretKey key, List<int> counter, int length)
        aesCtr,
    required TResult Function(AesGcmSecretKey key, Uint8List iv,
            List<int>? authTag, List<int>? additionalData, int? tagLength)
        aesGcm,
    required TResult Function(RsaOaepPrivateKey key, List<int>? label) rsaOaep,
  }) {
    return rsaOaep(key, label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? plain,
    TResult? Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult? Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult? Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult? Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
  }) {
    return rsaOaep?.call(key, label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbcSecretKey key, Uint8List iv)? aesCbc,
    TResult Function(AesCtrSecretKey key, List<int> counter, int length)?
        aesCtr,
    TResult Function(AesGcmSecretKey key, Uint8List iv, List<int>? authTag,
            List<int>? additionalData, int? tagLength)?
        aesGcm,
    TResult Function(RsaOaepPrivateKey key, List<int>? label)? rsaOaep,
    required TResult orElse(),
  }) {
    if (rsaOaep != null) {
      return rsaOaep(key, label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypePlain value) plain,
    required TResult Function(TypeAesCbc value) aesCbc,
    required TResult Function(TypeAesCtr value) aesCtr,
    required TResult Function(TypeAesGcm value) aesGcm,
    required TResult Function(TypeRsaOaep value) rsaOaep,
  }) {
    return rsaOaep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypePlain value)? plain,
    TResult? Function(TypeAesCbc value)? aesCbc,
    TResult? Function(TypeAesCtr value)? aesCtr,
    TResult? Function(TypeAesGcm value)? aesGcm,
    TResult? Function(TypeRsaOaep value)? rsaOaep,
  }) {
    return rsaOaep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
    TResult Function(TypeRsaOaep value)? rsaOaep,
    required TResult orElse(),
  }) {
    if (rsaOaep != null) {
      return rsaOaep(this);
    }
    return orElse();
  }
}

abstract class TypeRsaOaep implements CryptoType {
  const factory TypeRsaOaep(
      {required final RsaOaepPrivateKey key,
      final List<int>? label}) = _$TypeRsaOaep;

  RsaOaepPrivateKey get key;
  List<int>? get label;
  @JsonKey(ignore: true)
  _$$TypeRsaOaepCopyWith<_$TypeRsaOaep> get copyWith =>
      throw _privateConstructorUsedError;
}
