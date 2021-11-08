// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filename.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Cache extends DataClass implements Insertable<Cache> {
  /// primary key
  /// server url
  final String url;

  /// grouping key
  final String group;

  /// downloaded data
  final Uint8List bytes;

  /// filename (nullable)
  final String? filename;

  /// last edited date and time
  final DateTime updated;
  Cache(
      {required this.url,
      required this.group,
      required this.bytes,
      this.filename,
      required this.updated});
  factory Cache.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Cache(
      url: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url'])!,
      group: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}group'])!,
      bytes: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bytes'])!,
      filename: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}filename']),
      updated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['url'] = Variable<String>(url);
    map['group'] = Variable<String>(group);
    map['bytes'] = Variable<Uint8List>(bytes);
    if (!nullToAbsent || filename != null) {
      map['filename'] = Variable<String?>(filename);
    }
    map['updated'] = Variable<DateTime>(updated);
    return map;
  }

  CachesCompanion toCompanion(bool nullToAbsent) {
    return CachesCompanion(
      url: Value(url),
      group: Value(group),
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
      url: serializer.fromJson<String>(json['url']),
      group: serializer.fromJson<String>(json['group']),
      bytes: serializer.fromJson<Uint8List>(json['bytes']),
      filename: serializer.fromJson<String?>(json['filename']),
      updated: serializer.fromJson<DateTime>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'url': serializer.toJson<String>(url),
      'group': serializer.toJson<String>(group),
      'bytes': serializer.toJson<Uint8List>(bytes),
      'filename': serializer.toJson<String?>(filename),
      'updated': serializer.toJson<DateTime>(updated),
    };
  }

  Cache copyWith(
          {String? url,
          String? group,
          Uint8List? bytes,
          String? filename,
          DateTime? updated}) =>
      Cache(
        url: url ?? this.url,
        group: group ?? this.group,
        bytes: bytes ?? this.bytes,
        filename: filename ?? this.filename,
        updated: updated ?? this.updated,
      );
  @override
  String toString() {
    return (StringBuffer('Cache(')
          ..write('url: $url, ')
          ..write('group: $group, ')
          ..write('bytes: $bytes, ')
          ..write('filename: $filename, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(url, group, bytes, filename, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cache &&
          other.url == this.url &&
          other.group == this.group &&
          other.bytes == this.bytes &&
          other.filename == this.filename &&
          other.updated == this.updated);
}

class CachesCompanion extends UpdateCompanion<Cache> {
  final Value<String> url;
  final Value<String> group;
  final Value<Uint8List> bytes;
  final Value<String?> filename;
  final Value<DateTime> updated;
  const CachesCompanion({
    this.url = const Value.absent(),
    this.group = const Value.absent(),
    this.bytes = const Value.absent(),
    this.filename = const Value.absent(),
    this.updated = const Value.absent(),
  });
  CachesCompanion.insert({
    required String url,
    required String group,
    required Uint8List bytes,
    this.filename = const Value.absent(),
    required DateTime updated,
  })  : url = Value(url),
        group = Value(group),
        bytes = Value(bytes),
        updated = Value(updated);
  static Insertable<Cache> custom({
    Expression<String>? url,
    Expression<String>? group,
    Expression<Uint8List>? bytes,
    Expression<String?>? filename,
    Expression<DateTime>? updated,
  }) {
    return RawValuesInsertable({
      if (url != null) 'url': url,
      if (group != null) 'group': group,
      if (bytes != null) 'bytes': bytes,
      if (filename != null) 'filename': filename,
      if (updated != null) 'updated': updated,
    });
  }

  CachesCompanion copyWith(
      {Value<String>? url,
      Value<String>? group,
      Value<Uint8List>? bytes,
      Value<String?>? filename,
      Value<DateTime>? updated}) {
    return CachesCompanion(
      url: url ?? this.url,
      group: group ?? this.group,
      bytes: bytes ?? this.bytes,
      filename: filename ?? this.filename,
      updated: updated ?? this.updated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (group.present) {
      map['group'] = Variable<String>(group.value);
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
          ..write('url: $url, ')
          ..write('group: $group, ')
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
  final VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String?> url = GeneratedColumn<String?>(
      'url', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _groupMeta = const VerificationMeta('group');
  late final GeneratedColumn<String?> group = GeneratedColumn<String?>(
      'group', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _bytesMeta = const VerificationMeta('bytes');
  late final GeneratedColumn<Uint8List?> bytes = GeneratedColumn<Uint8List?>(
      'bytes', aliasedName, false,
      typeName: 'BLOB', requiredDuringInsert: true);
  final VerificationMeta _filenameMeta = const VerificationMeta('filename');
  late final GeneratedColumn<String?> filename = GeneratedColumn<String?>(
      'filename', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _updatedMeta = const VerificationMeta('updated');
  late final GeneratedColumn<DateTime?> updated = GeneratedColumn<DateTime?>(
      'updated', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [url, group, bytes, filename, updated];
  @override
  String get aliasedName => _alias ?? 'caches';
  @override
  String get actualTableName => 'caches';
  @override
  VerificationContext validateIntegrity(Insertable<Cache> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
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
  Set<GeneratedColumn> get $primaryKey => {url};
  @override
  Cache map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Cache.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
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
