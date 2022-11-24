import 'package:isar/isar.dart';

part 'cache.g.dart';

/// Cache
@collection
class Caches {
  Caches({
    required this.url,
    required this.group,
    required this.bytes,
    required this.filename,
    required this.updated,
  });

  Id id = Isar.autoIncrement;

  /// server url
  final String url;

  /// grouping key
  final String group;

  /// downloaded data
  final List<int> bytes;

  /// filename (nullable)
  final String? filename;

  /// last edited date and time
  final DateTime updated;
}
