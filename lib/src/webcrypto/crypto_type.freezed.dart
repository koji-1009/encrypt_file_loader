// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  TypeAesCbc aesCbc(
      {required AesCbc key,
      required Uint8List iv,
      required SecretKey secretKey}) {
    return TypeAesCbc(
      key: key,
      iv: iv,
      secretKey: secretKey,
    );
  }

  TypeAesCtr aesCtr(
      {required AesCtr key,
      required Uint8List iv,
      required SecretKey secretKey}) {
    return TypeAesCtr(
      key: key,
      iv: iv,
      secretKey: secretKey,
    );
  }

  TypeAesGcm aesGcm(
      {required AesGcm key,
      required Uint8List iv,
      required SecretKey secretKey,
      List<int> aad = const [],
      Uint8List? tag}) {
    return TypeAesGcm(
      key: key,
      iv: iv,
      secretKey: secretKey,
      aad: aad,
      tag: tag,
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
    required TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)
        aesCbc,
    required TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)
        aesCtr,
    required TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)
        aesGcm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypePlain value) plain,
    required TResult Function(TypeAesCbc value) aesCbc,
    required TResult Function(TypeAesCtr value) aesCtr,
    required TResult Function(TypeAesGcm value) aesGcm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TypePlain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)
        aesCbc,
    required TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)
        aesCtr,
    required TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)
        aesGcm,
  }) {
    return plain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
  }) {
    return plain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
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
  }) {
    return plain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
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
  $Res call({AesCbc key, Uint8List iv, SecretKey secretKey});
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
    Object? secretKey = freezed,
  }) {
    return _then(TypeAesCbc(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesCbc,
      iv: iv == freezed
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      secretKey: secretKey == freezed
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as SecretKey,
    ));
  }
}

/// @nodoc

class _$TypeAesCbc with DiagnosticableTreeMixin implements TypeAesCbc {
  const _$TypeAesCbc(
      {required this.key, required this.iv, required this.secretKey});

  @override
  final AesCbc key;
  @override
  final Uint8List iv;
  @override
  final SecretKey secretKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.aesCbc(key: $key, iv: $iv, secretKey: $secretKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.aesCbc'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('iv', iv))
      ..add(DiagnosticsProperty('secretKey', secretKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeAesCbc &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.iv, iv) &&
            const DeepCollectionEquality().equals(other.secretKey, secretKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(iv),
      const DeepCollectionEquality().hash(secretKey));

  @JsonKey(ignore: true)
  @override
  $TypeAesCbcCopyWith<TypeAesCbc> get copyWith =>
      _$TypeAesCbcCopyWithImpl<TypeAesCbc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)
        aesCbc,
    required TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)
        aesCtr,
    required TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)
        aesGcm,
  }) {
    return aesCbc(key, iv, secretKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
  }) {
    return aesCbc?.call(key, iv, secretKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
    required TResult orElse(),
  }) {
    if (aesCbc != null) {
      return aesCbc(key, iv, secretKey);
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
  }) {
    return aesCbc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
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
      {required AesCbc key,
      required Uint8List iv,
      required SecretKey secretKey}) = _$TypeAesCbc;

  AesCbc get key;
  Uint8List get iv;
  SecretKey get secretKey;
  @JsonKey(ignore: true)
  $TypeAesCbcCopyWith<TypeAesCbc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeAesCtrCopyWith<$Res> {
  factory $TypeAesCtrCopyWith(
          TypeAesCtr value, $Res Function(TypeAesCtr) then) =
      _$TypeAesCtrCopyWithImpl<$Res>;
  $Res call({AesCtr key, Uint8List iv, SecretKey secretKey});
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
    Object? iv = freezed,
    Object? secretKey = freezed,
  }) {
    return _then(TypeAesCtr(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesCtr,
      iv: iv == freezed
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      secretKey: secretKey == freezed
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as SecretKey,
    ));
  }
}

/// @nodoc

class _$TypeAesCtr with DiagnosticableTreeMixin implements TypeAesCtr {
  const _$TypeAesCtr(
      {required this.key, required this.iv, required this.secretKey});

  @override
  final AesCtr key;
  @override
  final Uint8List iv;
  @override
  final SecretKey secretKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.aesCtr(key: $key, iv: $iv, secretKey: $secretKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.aesCtr'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('iv', iv))
      ..add(DiagnosticsProperty('secretKey', secretKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeAesCtr &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.iv, iv) &&
            const DeepCollectionEquality().equals(other.secretKey, secretKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(iv),
      const DeepCollectionEquality().hash(secretKey));

  @JsonKey(ignore: true)
  @override
  $TypeAesCtrCopyWith<TypeAesCtr> get copyWith =>
      _$TypeAesCtrCopyWithImpl<TypeAesCtr>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)
        aesCbc,
    required TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)
        aesCtr,
    required TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)
        aesGcm,
  }) {
    return aesCtr(key, iv, secretKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
  }) {
    return aesCtr?.call(key, iv, secretKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
    required TResult orElse(),
  }) {
    if (aesCtr != null) {
      return aesCtr(key, iv, secretKey);
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
  }) {
    return aesCtr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
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
      {required AesCtr key,
      required Uint8List iv,
      required SecretKey secretKey}) = _$TypeAesCtr;

  AesCtr get key;
  Uint8List get iv;
  SecretKey get secretKey;
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
      {AesGcm key,
      Uint8List iv,
      SecretKey secretKey,
      List<int> aad,
      Uint8List? tag});
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
    Object? secretKey = freezed,
    Object? aad = freezed,
    Object? tag = freezed,
  }) {
    return _then(TypeAesGcm(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AesGcm,
      iv: iv == freezed
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      secretKey: secretKey == freezed
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as SecretKey,
      aad: aad == freezed
          ? _value.aad
          : aad // ignore: cast_nullable_to_non_nullable
              as List<int>,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$TypeAesGcm with DiagnosticableTreeMixin implements TypeAesGcm {
  const _$TypeAesGcm(
      {required this.key,
      required this.iv,
      required this.secretKey,
      this.aad = const [],
      this.tag});

  @override
  final AesGcm key;
  @override
  final Uint8List iv;
  @override
  final SecretKey secretKey;
  @JsonKey()
  @override
  final List<int> aad;
  @override
  final Uint8List? tag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoType.aesGcm(key: $key, iv: $iv, secretKey: $secretKey, aad: $aad, tag: $tag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoType.aesGcm'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('iv', iv))
      ..add(DiagnosticsProperty('secretKey', secretKey))
      ..add(DiagnosticsProperty('aad', aad))
      ..add(DiagnosticsProperty('tag', tag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeAesGcm &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.iv, iv) &&
            const DeepCollectionEquality().equals(other.secretKey, secretKey) &&
            const DeepCollectionEquality().equals(other.aad, aad) &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(iv),
      const DeepCollectionEquality().hash(secretKey),
      const DeepCollectionEquality().hash(aad),
      const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  $TypeAesGcmCopyWith<TypeAesGcm> get copyWith =>
      _$TypeAesGcmCopyWithImpl<TypeAesGcm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plain,
    required TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)
        aesCbc,
    required TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)
        aesCtr,
    required TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)
        aesGcm,
  }) {
    return aesGcm(key, iv, secretKey, aad, tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
  }) {
    return aesGcm?.call(key, iv, secretKey, aad, tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plain,
    TResult Function(AesCbc key, Uint8List iv, SecretKey secretKey)? aesCbc,
    TResult Function(AesCtr key, Uint8List iv, SecretKey secretKey)? aesCtr,
    TResult Function(AesGcm key, Uint8List iv, SecretKey secretKey,
            List<int> aad, Uint8List? tag)?
        aesGcm,
    required TResult orElse(),
  }) {
    if (aesGcm != null) {
      return aesGcm(key, iv, secretKey, aad, tag);
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
  }) {
    return aesGcm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TypePlain value)? plain,
    TResult Function(TypeAesCbc value)? aesCbc,
    TResult Function(TypeAesCtr value)? aesCtr,
    TResult Function(TypeAesGcm value)? aesGcm,
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
      {required AesGcm key,
      required Uint8List iv,
      required SecretKey secretKey,
      List<int> aad,
      Uint8List? tag}) = _$TypeAesGcm;

  AesGcm get key;
  Uint8List get iv;
  SecretKey get secretKey;
  List<int> get aad;
  Uint8List? get tag;
  @JsonKey(ignore: true)
  $TypeAesGcmCopyWith<TypeAesGcm> get copyWith =>
      throw _privateConstructorUsedError;
}
