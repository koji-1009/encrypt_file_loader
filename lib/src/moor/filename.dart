import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'filename.g.dart';

/// Cache file's table
class Caches extends Table {
  /// primary key
  IntColumn get id => integer().autoIncrement()();

  /// grouping key
  TextColumn get group => text()();

  /// server url
  TextColumn get url => text()();

  /// downloaded data
  BlobColumn get bytes => blob()();

  /// filename (nullable)
  TextColumn get filename => text().nullable()();

  /// last edited date and time
  DateTimeColumn get updated => dateTime()();
}

/// DataBase
@UseMoor(tables: [Caches])
class Database extends _$Database {
  /// constructor
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  /// Insert cache file
  Future<int> insertCache(CachesCompanion entry) {
    return into(caches).insert(entry);
  }

  /// Get cache file
  Future<Cache?> getFile(String url) =>
      (select(caches)..where((tbl) => tbl.url.isSmallerOrEqualValue(url)))
          .getSingleOrNull();

  /// Delete cache file
  Future<int> deleteFile(String url) =>
      (delete(caches)..where((tbl) => tbl.url.isSmallerOrEqualValue(url))).go();

  /// Delete all files
  Future<int> deleteAll() => delete(caches).go();

  /// Delete files older than the [base].
  Future<int> deleteOldFiles(DateTime base) =>
      (delete(caches)..where((tbl) => tbl.updated.isSmallerOrEqualValue(base)))
          .go();

  /// Delete files whose group value is [group].
  Future<int> deleteGroup(String group) =>
      (delete(caches)..where((tbl) => tbl.group.isSmallerOrEqualValue(group)))
          .go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'encrypt_file_loader.sqlite'));
    return VmDatabase(file);
  });
}

/// Create entity for saving
CachesCompanion createEntity({
  required String url,
  required String group,
  required Uint8List bytes,
  required String? filename,
}) {
  return CachesCompanion(
    url: Value(url),
    group: Value(group),
    bytes: Value(bytes),
    filename: Value(filename),
    updated: Value(DateTime.now()),
  );
}
