import 'package:moor/moor.dart';

import 'db/connection.dart';

part 'filename.g.dart';

/// Cache file's table
class Caches extends Table {
  /// primary key
  /// server url
  TextColumn get url => text()();

  /// grouping key
  TextColumn get group => text()();

  /// downloaded data
  BlobColumn get bytes => blob()();

  /// filename (nullable)
  TextColumn get filename => text().nullable()();

  /// last edited date and time
  DateTimeColumn get updated => dateTime()();

  @override
  Set<Column> get primaryKey => {url};
}

/// DataBase
@UseMoor(tables: [Caches])
class Database extends _$Database {
  /// constructor
  Database() : super(Connection.instance);

  @override
  int get schemaVersion => 1;

  /// Insert cache file.
  Future<int> insertCache(CachesCompanion entry) => into(caches).insert(entry);

  /// Get cache file.
  Future<Cache?> getFile(String url) =>
      (select(caches)..where((tbl) => tbl.url.equals(url))).getSingleOrNull();

  /// Delete cache file.
  /// Returns the amount of rows that were deleted.
  Future<int> deleteFile(String url) =>
      (delete(caches)..where((tbl) => tbl.url.equals(url))).go();

  /// Delete all files.
  /// Returns the amount of rows that were deleted .
  Future<int> deleteAll() => delete(caches).go();

  /// Delete files whose group value is [group].
  /// Returns the amount of rows that were deleted.
  Future<int> deleteGroup(String group) =>
      (delete(caches)..where((tbl) => tbl.group.equals(group))).go();

  /// Delete files older than the [base].
  /// Returns the amount of rows that were deleted.
  Future<int> deleteOldFiles(DateTime base) =>
      (delete(caches)..where((tbl) => tbl.updated.isSmallerOrEqualValue(base)))
          .go();
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
