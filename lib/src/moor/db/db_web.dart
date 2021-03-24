import 'package:moor/moor.dart';
import 'package:moor/moor_web.dart';

/// for Web
LazyDatabase getDatabase() {
  return LazyDatabase(() async {
    return WebDatabase('encrypt_file_loader');
  });
}
