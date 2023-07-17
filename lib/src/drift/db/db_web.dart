import 'package:drift/drift.dart';
import 'package:drift/web.dart';

/// for Web
LazyDatabase getDatabase() => LazyDatabase(
      () async => WebDatabase.withStorage(
        await DriftWebStorage.indexedDbIfSupported('encrypt_file_loader'),
      ),
    );
