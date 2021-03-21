import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'filename.g.dart';

/// Transfer
class Caches extends Table {
  /// primary key
  IntColumn get id => integer().autoIncrement()();

  /// server url
  TextColumn get url => text()();

  /// downloaded data
  BlobColumn get bytes => blob()();
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
  Future deleteFile(String url) =>
      (delete(caches)..where((tbl) => tbl.url.isSmallerOrEqualValue(url))).go();
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
  required Uint8List bytes,
}) {
  return CachesCompanion(
    url: Value(url),
    bytes: Value(bytes),
  );
}
