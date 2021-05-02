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

  TypePlain plain() {
    return const TypePlain();
  }

  TypeAesCbc aesCbc({required AesCbcSecretKey key, required Uint8List iv}) {
    return TypeAesCbc(
      key: key,
      iv: iv,
    );
  }

  TypeAesCtr aesCtr(
      {required AesCtrSecretKey key,
      required List<int> counter,
      required int length}) {
    return TypeAesCtr(
      key: key,
      counter: counter,
      length: length,
    );
  }

  TypeAesGcm aesGcm(
      {required AesGcmSecretKey key,
      required Uint8List iv,
      List<int>? authTag,
      List<int>? additionalData,
      int? tagLength}) {
    return TypeAesGcm(
      key: key,
      iv: iv,
      authTag: authTag,
      additionalData: additionalData,
      tagLength: tagLength,
    );
  }

  TypeRsaOaep rsaOaep({required RsaOaepPrivateKey key, List<int>? label}) {
    return TypeRsaOaep(
      key: key,
      label: label,
    );
  }
}

/// @nodoc
const $CryptoType = _$CryptoTypeTearOff();

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
abstract class $TypePlainCopyWith<$Res> {
  factory $TypePlainCopyWith(TypePlain value, $Res Function(TypePlain) then) =
      _$TypePlainCopyWithImpl<$Res>;
}

/// @nodoc
class _$TypePlainCopyWithImpl<$Res> extends _$CryptoTypeCopyWithImpl<$Res>
    implements $TypePlainCopyWith<$Res> {
  _$TypePlainCopyWithImpl(TypePlain _value, $Res Function(TypePlain) _then)
      : super(_value, (v) => _then(v as TypePlain));

  @override
  TypePlain get _value => super._value as TypePlain;
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
    properties..add(DiagnosticsProperty('type', 'CryptoType.plain'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TypePlain);
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
abstract class $TypeAesCbcCopyWith<$Res> {
  factory $TypeAesCbcCopyWith(
          TypeAesCbc value, $Res Function(TypeAesCbc) then) =
      _$TypeAesCbcCopyWithImpl<$Res>;
  $Res call({AesCbcSecretKey key, Uint8List iv});
}

/// @nodoc
class _$TypeAesCbcCopyWithImpl<$Res> extends _$CryptoTypeCopyWithImpl<$Res>
    implements $TypeAesCbcCopyWith<$Res> {
  _$TypeAesCbcCopyWithImpl(TypeAesCbc _value, $Res Function(TypeAesCbc) _then)
      : super(_value, (v) => _then(v as TypeAesCbc));

  @override
  TypeAesCbc get _value => super._value as TypeAesCbc;

  @override
  $Res call({
    Object? key = freezed,
    Object? iv = freezed,
  }) {
    return _then(TypeAesCbc(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesCbcSecretKey,
      iv: iv == freezed
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
        (other is TypeAesCbc &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.iv, iv) ||
                const DeepCollectionEquality().equals(other.iv, iv)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(iv);

  @JsonKey(ignore: true)
  @override
  $TypeAesCbcCopyWith<TypeAesCbc> get copyWith =>
      _$TypeAesCbcCopyWithImpl<TypeAesCbc>(this, _$identity);

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
      {required AesCbcSecretKey key, required Uint8List iv}) = _$TypeAesCbc;

  AesCbcSecretKey get key => throw _privateConstructorUsedError;
  Uint8List get iv => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeAesCbcCopyWith<TypeAesCbc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeAesCtrCopyWith<$Res> {
  factory $TypeAesCtrCopyWith(
          TypeAesCtr value, $Res Function(TypeAesCtr) then) =
      _$TypeAesCtrCopyWithImpl<$Res>;
  $Res call({AesCtrSecretKey key, List<int> counter, int length});
}

/// @nodoc
class _$TypeAesCtrCopyWithImpl<$Res> extends _$CryptoTypeCopyWithImpl<$Res>
    implements $TypeAesCtrCopyWith<$Res> {
  _$TypeAesCtrCopyWithImpl(TypeAesCtr _value, $Res Function(TypeAesCtr) _then)
      : super(_value, (v) => _then(v as TypeAesCtr));

  @override
  TypeAesCtr get _value => super._value as TypeAesCtr;

  @override
  $Res call({
    Object? key = freezed,
    Object? counter = freezed,
    Object? length = freezed,
  }) {
    return _then(TypeAesCtr(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesCtrSecretKey,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as List<int>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TypeAesCtr with DiagnosticableTreeMixin implements TypeAesCtr {
  const _$TypeAesCtr(
      {required this.key, required this.counter, required this.length});

  @override
  final AesCtrSecretKey key;
  @override
  final List<int> counter;
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
        (other is TypeAesCtr &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality()
                    .equals(other.counter, counter)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(counter) ^
      const DeepCollectionEquality().hash(length);

  @JsonKey(ignore: true)
  @override
  $TypeAesCtrCopyWith<TypeAesCtr> get copyWith =>
      _$TypeAesCtrCopyWithImpl<TypeAesCtr>(this, _$identity);

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
      {required AesCtrSecretKey key,
      required List<int> counter,
      required int length}) = _$TypeAesCtr;

  AesCtrSecretKey get key => throw _privateConstructorUsedError;
  List<int> get counter => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeAesCtrCopyWith<TypeAesCtr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeAesGcmCopyWith<$Res> {
  factory $TypeAesGcmCopyWith(
          TypeAesGcm value, $Res Function(TypeAesGcm) then) =
      _$TypeAesGcmCopyWithImpl<$Res>;
  $Res call(
      {AesGcmSecretKey key,
      Uint8List iv,
      List<int>? authTag,
      List<int>? additionalData,
      int? tagLength});
}

/// @nodoc
class _$TypeAesGcmCopyWithImpl<$Res> extends _$CryptoTypeCopyWithImpl<$Res>
    implements $TypeAesGcmCopyWith<$Res> {
  _$TypeAesGcmCopyWithImpl(TypeAesGcm _value, $Res Function(TypeAesGcm) _then)
      : super(_value, (v) => _then(v as TypeAesGcm));

  @override
  TypeAesGcm get _value => super._value as TypeAesGcm;

  @override
  $Res call({
    Object? key = freezed,
    Object? iv = freezed,
    Object? authTag = freezed,
    Object? additionalData = freezed,
    Object? tagLength = freezed,
  }) {
    return _then(TypeAesGcm(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesGcmSecretKey,
      iv: iv == freezed
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      authTag: authTag == freezed
          ? _value.authTag
          : authTag // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      additionalData: additionalData == freezed
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tagLength: tagLength == freezed
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
      this.authTag,
      this.additionalData,
      this.tagLength});

  @override
  final AesGcmSecretKey key;
  @override
  final Uint8List iv;
  @override
  final List<int>? authTag;
  @override
  final List<int>? additionalData;
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
        (other is TypeAesGcm &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.iv, iv) ||
                const DeepCollectionEquality().equals(other.iv, iv)) &&
            (identical(other.authTag, authTag) ||
                const DeepCollectionEquality()
                    .equals(other.authTag, authTag)) &&
            (identical(other.additionalData, additionalData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalData, additionalData)) &&
            (identical(other.tagLength, tagLength) ||
                const DeepCollectionEquality()
                    .equals(other.tagLength, tagLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(iv) ^
      const DeepCollectionEquality().hash(authTag) ^
      const DeepCollectionEquality().hash(additionalData) ^
      const DeepCollectionEquality().hash(tagLength);

  @JsonKey(ignore: true)
  @override
  $TypeAesGcmCopyWith<TypeAesGcm> get copyWith =>
      _$TypeAesGcmCopyWithImpl<TypeAesGcm>(this, _$identity);

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
      {required AesGcmSecretKey key,
      required Uint8List iv,
      List<int>? authTag,
      List<int>? additionalData,
      int? tagLength}) = _$TypeAesGcm;

  AesGcmSecretKey get key => throw _privateConstructorUsedError;
  Uint8List get iv => throw _privateConstructorUsedError;
  List<int>? get authTag => throw _privateConstructorUsedError;
  List<int>? get additionalData => throw _privateConstructorUsedError;
  int? get tagLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeAesGcmCopyWith<TypeAesGcm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeRsaOaepCopyWith<$Res> {
  factory $TypeRsaOaepCopyWith(
          TypeRsaOaep value, $Res Function(TypeRsaOaep) then) =
      _$TypeRsaOaepCopyWithImpl<$Res>;
  $Res call({RsaOaepPrivateKey key, List<int>? label});
}

/// @nodoc
class _$TypeRsaOaepCopyWithImpl<$Res> extends _$CryptoTypeCopyWithImpl<$Res>
    implements $TypeRsaOaepCopyWith<$Res> {
  _$TypeRsaOaepCopyWithImpl(
      TypeRsaOaep _value, $Res Function(TypeRsaOaep) _then)
      : super(_value, (v) => _then(v as TypeRsaOaep));

  @override
  TypeRsaOaep get _value => super._value as TypeRsaOaep;

  @override
  $Res call({
    Object? key = freezed,
    Object? label = freezed,
  }) {
    return _then(TypeRsaOaep(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as RsaOaepPrivateKey,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$TypeRsaOaep with DiagnosticableTreeMixin implements TypeRsaOaep {
  const _$TypeRsaOaep({required this.key, this.label});

  @override
  final RsaOaepPrivateKey key;
  @override
  final List<int>? label;

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
        (other is TypeRsaOaep &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  $TypeRsaOaepCopyWith<TypeRsaOaep> get copyWith =>
      _$TypeRsaOaepCopyWithImpl<TypeRsaOaep>(this, _$identity);

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
      {required RsaOaepPrivateKey key, List<int>? label}) = _$TypeRsaOaep;

  RsaOaepPrivateKey get key => throw _privateConstructorUsedError;
  List<int>? get label => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeRsaOaepCopyWith<TypeRsaOaep> get copyWith =>
      throw _privateConstructorUsedError;
}
