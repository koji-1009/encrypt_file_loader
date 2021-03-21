// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filename.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Cache extends DataClass implements Insertable<Cache> {
  /// primary key
  final int id;

  /// server url
  final String url;

  /// downloaded data
  final Uint8List bytes;
  Cache({required this.id, required this.url, required this.bytes});
  factory Cache.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    return Cache(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url'])!,
      bytes: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}bytes'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['url'] = Variable<String>(url);
    map['bytes'] = Variable<Uint8List>(bytes);
    return map;
  }

  CachesCompanion toCompanion(bool nullToAbsent) {
    return CachesCompanion(
      id: Value(id),
      url: Value(url),
      bytes: Value(bytes),
    );
  }

  factory Cache.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Cache(
      id: serializer.fromJson<int>(json['id']),
      url: serializer.fromJson<String>(json['url']),
      bytes: serializer.fromJson<Uint8List>(json['bytes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'url': serializer.toJson<String>(url),
      'bytes': serializer.toJson<Uint8List>(bytes),
    };
  }

  Cache copyWith({int? id, String? url, Uint8List? bytes}) => Cache(
        id: id ?? this.id,
        url: url ?? this.url,
        bytes: bytes ?? this.bytes,
      );
  @override
  String toString() {
    return (StringBuffer('Cache(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('bytes: $bytes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(url.hashCode, bytes.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Cache &&
          other.id == this.id &&
          other.url == this.url &&
          other.bytes == this.bytes);
}

class CachesCompanion extends UpdateCompanion<Cache> {
  final Value<int> id;
  final Value<String> url;
  final Value<Uint8List> bytes;
  const CachesCompanion({
    this.id = const Value.absent(),
    this.url = const Value.absent(),
    this.bytes = const Value.absent(),
  });
  CachesCompanion.insert({
    this.id = const Value.absent(),
    required String url,
    required Uint8List bytes,
  })   : url = Value(url),
        bytes = Value(bytes);
  static Insertable<Cache> custom({
    Expression<int>? id,
    Expression<String>? url,
    Expression<Uint8List>? bytes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (url != null) 'url': url,
      if (bytes != null) 'bytes': bytes,
    });
  }

  CachesCompanion copyWith(
      {Value<int>? id, Value<String>? url, Value<Uint8List>? bytes}) {
    return CachesCompanion(
      id: id ?? this.id,
      url: url ?? this.url,
      bytes: bytes ?? this.bytes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (bytes.present) {
      map['bytes'] = Variable<Uint8List>(bytes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachesCompanion(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('bytes: $bytes')
          ..write(')'))
        .toString();
  }
}

class $CachesTable extends Caches with TableInfo<$CachesTable, Cache> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CachesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedTextColumn url = _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _bytesMeta = const VerificationMeta('bytes');
  @override
  late final GeneratedBlobColumn bytes = _constructBytes();
  GeneratedBlobColumn _constructBytes() {
    return GeneratedBlobColumn(
      'bytes',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, url, bytes];
  @override
  $CachesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'caches';
  @override
  final String actualTableName = 'caches';
  @override
  VerificationContext validateIntegrity(Insertable<Cache> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('bytes')) {
      context.handle(
          _bytesMeta, bytes.isAcceptableOrUnknown(data['bytes']!, _bytesMeta));
    } else if (isInserting) {
      context.missing(_bytesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Cache map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Cache.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CachesTable createAlias(String alias) {
    return $CachesTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CachesTable caches = $CachesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [caches];
}
