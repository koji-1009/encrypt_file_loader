import 'package:encrypt_file_loader/src/isar/cache.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

/// for Android, iOS...
Future<Isar> getDatabase(String name) async {
  final tmpDir = await getTemporaryDirectory();
  return await Isar.open(
    [
      CachesSchema,
    ],
    directory: tmpDir.path,
    name: name,
  );
}
