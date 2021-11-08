import 'dart:io';

import 'package:drift/native.dart';
import 'package:drift/drift.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// for Android, iOS...
LazyDatabase getDatabase() {
  return LazyDatabase(() async {
    final dbFolder = await getTemporaryDirectory();
    final file = File(p.join(dbFolder.path, 'encrypt_file_loader.sqlite'));
    return NativeDatabase(file);
  });
}
