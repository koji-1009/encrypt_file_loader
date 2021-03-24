import 'package:moor/moor.dart';

import 'connection_stub.dart'
    if (dart.library.io) 'db_ffi.dart'
    if (dart.library.js) 'db_web.dart';

// ignore: avoid_classes_with_only_static_members
/// Manage ffi and web DB connections
abstract class Connection {
  static LazyDatabase? _instance;

  /// get [LazyDatabase]
  static LazyDatabase get instance {
    _instance ??= getDatabase();
    return _instance!;
  }
}
