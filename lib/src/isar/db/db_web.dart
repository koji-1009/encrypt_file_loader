import 'package:encrypt_file_loader/src/isar/cache.dart';
import 'package:isar/isar.dart';

/// for Web
Future<Isar> getDatabase(String name) async {
  return await Isar.open(
    [
      CachesSchema,
    ],
    name: name,
  );
}
