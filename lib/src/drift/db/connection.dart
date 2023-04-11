import 'package:drift/drift.dart';

import 'connection_stub.dart'
    if (dart.library.io) 'db_ffi.dart'
    if (dart.library.js) 'db_web.dart';

/// [Connection] is a class that returns [LazyDatabase].
abstract class Connection {
  static LazyDatabase? _instance;

  /// get [LazyDatabase]
  static LazyDatabase get instance {
    _instance ??= getDatabase();
    return _instance!;
  }
}
