import 'package:drift/drift.dart';
import 'package:drift/web.dart';

/// for Web
LazyDatabase getDatabase() {
  return LazyDatabase(() async {
    return WebDatabase.withStorage(
      await DriftWebStorage.indexedDbIfSupported('encrypt_file_loader'),
    );
  });
}
