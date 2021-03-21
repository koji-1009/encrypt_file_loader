// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filename.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Cache extends DataClass implements Insertable<Cache> {
  /// primary key
  final int id;

  /// grouping key
  final String group;

  /// server url
  final String url;

  /// downloaded data
  final Uint8List bytes;

  /// filename (nullable)
  final String? filename;

  /// last edited date and time
  final DateTime updated;
  Cache(
      {required this.id,
      required this.group,
      required this.url,
      required this.bytes,
      this.filename,
      required this.updated});
  factory Cache.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Cache(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      group:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}group'])!,
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url'])!,
      bytes: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}bytes'])!,
      filename: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}filename']),
      updated: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['group'] = Variable<String>(group);
    map['url'] = Variable<String>(url);
    map['bytes'] = Variable<Uint8List>(bytes);
    if (!nullToAbsent || filename != null) {
      map['filename'] = Variable<String?>(filename);
    }
    map['updated'] = Variable<DateTime>(updated);
    return map;
  }

  CachesCompanion toCompanion(bool nullToAbsent) {
    return CachesCompanion(
      id: Value(id),
      group: Value(group),
      url: Value(url),
      bytes: Value(bytes),
      filename: filename == null && nullToAbsent
          ? const Value.absent()
          : Value(filename),
      updated: Value(updated),
    );
  }

  factory Cache.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Cache(
      id: serializer.fromJson<int>(json['id']),
      group: serializer.fromJson<String>(json['group']),
      url: serializer.fromJson<String>(json['url']),
      bytes: serializer.fromJson<Uint8List>(json['bytes']),
      filename: serializer.fromJson<String?>(json['filename']),
      updated: serializer.fromJson<DateTime>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'group': serializer.toJson<String>(group),
      'url': serializer.toJson<String>(url),
      'bytes': serializer.toJson<Uint8List>(bytes),
      'filename': serializer.toJson<String?>(filename),
      'updated': serializer.toJson<DateTime>(updated),
    };
  }

  Cache copyWith(
          {int? id,
          String? group,
          String? url,
          Uint8List? bytes,
          String? filename,
          DateTime? updated}) =>
      Cache(
        id: id ?? this.id,
        group: group ?? this.group,
        url: url ?? this.url,
        bytes: bytes ?? this.bytes,
        filename: filename ?? this.filename,
        updated: updated ?? this.updated,
      );
  @override
  String toString() {
    return (StringBuffer('Cache(')
          ..write('id: $id, ')
          ..write('group: $group, ')
          ..write('url: $url, ')
          ..write('bytes: $bytes, ')
          ..write('filename: $filename, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          group.hashCode,
          $mrjc(
              url.hashCode,
              $mrjc(bytes.hashCode,
                  $mrjc(filename.hashCode, updated.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Cache &&
          other.id == this.id &&
          other.group == this.group &&
          other.url == this.url &&
          other.bytes == this.bytes &&
          other.filename == this.filename &&
          other.updated == this.updated);
}

class CachesCompanion extends UpdateCompanion<Cache> {
  final Value<int> id;
  final Value<String> group;
  final Value<String> url;
  final Value<Uint8List> bytes;
  final Value<String?> filename;
  final Value<DateTime> updated;
  const CachesCompanion({
    this.id = const Value.absent(),
    this.group = const Value.absent(),
    this.url = const Value.absent(),
    this.bytes = const Value.absent(),
    this.filename = const Value.absent(),
    this.updated = const Value.absent(),
  });
  CachesCompanion.insert({
    this.id = const Value.absent(),
    required String group,
    required String url,
    required Uint8List bytes,
    this.filename = const Value.absent(),
    required DateTime updated,
  })   : group = Value(group),
        url = Value(url),
        bytes = Value(bytes),
        updated = Value(updated);
  static Insertable<Cache> custom({
    Expression<int>? id,
    Expression<String>? group,
    Expression<String>? url,
    Expression<Uint8List>? bytes,
    Expression<String?>? filename,
    Expression<DateTime>? updated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (group != null) 'group': group,
      if (url != null) 'url': url,
      if (bytes != null) 'bytes': bytes,
      if (filename != null) 'filename': filename,
      if (updated != null) 'updated': updated,
    });
  }

  CachesCompanion copyWith(
      {Value<int>? id,
      Value<String>? group,
      Value<String>? url,
      Value<Uint8List>? bytes,
      Value<String?>? filename,
      Value<DateTime>? updated}) {
    return CachesCompanion(
      id: id ?? this.id,
      group: group ?? this.group,
      url: url ?? this.url,
      bytes: bytes ?? this.bytes,
      filename: filename ?? this.filename,
      updated: updated ?? this.updated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (group.present) {
      map['group'] = Variable<String>(group.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (bytes.present) {
      map['bytes'] = Variable<Uint8List>(bytes.value);
    }
    if (filename.present) {
      map['filename'] = Variable<String?>(filename.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachesCompanion(')
          ..write('id: $id, ')
          ..write('group: $group, ')
          ..write('url: $url, ')
          ..write('bytes: $bytes, ')
          ..write('filename: $filename, ')
          ..write('updated: $updated')
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

  final VerificationMeta _groupMeta = const VerificationMeta('group');
  @override
  late final GeneratedTextColumn group = _constructGroup();
  GeneratedTextColumn _constructGroup() {
    return GeneratedTextColumn(
      'group',
      $tableName,
      false,
    );
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

  final VerificationMeta _filenameMeta = const VerificationMeta('filename');
  @override
  late final GeneratedTextColumn filename = _constructFilename();
  GeneratedTextColumn _constructFilename() {
    return GeneratedTextColumn(
      'filename',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedMeta = const VerificationMeta('updated');
  @override
  late final GeneratedDateTimeColumn updated = _constructUpdated();
  GeneratedDateTimeColumn _constructUpdated() {
    return GeneratedDateTimeColumn(
      'updated',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, group, url, bytes, filename, updated];
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
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
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
    if (data.containsKey('filename')) {
      context.handle(_filenameMeta,
          filename.isAcceptableOrUnknown(data['filename']!, _filenameMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    } else if (isInserting) {
      context.missing(_updatedMeta);
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
