import 'package:drift/drift.dart';
import 'package:drift/web.dart';

/// for Web
LazyDatabase getDatabase() {
  return LazyDatabase(() async {
    return WebDatabase('encrypt_file_loader');
  });
}
