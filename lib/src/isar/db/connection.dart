import 'package:isar/isar.dart';

import 'connection_stub.dart'
    if (dart.library.io) 'db_ffi.dart'
    if (dart.library.js) 'db_web.dart';

/// Manage ffi and web DB connections
abstract class Connection {
  static Isar? _instance;

  /// get [Isar]
  static Future<Isar> get instance async {
    _instance ??= await getDatabase('encrypt_file_loader');
    return _instance!;
  }
}
