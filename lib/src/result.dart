import 'package:flutter/foundation.dart';

/// Result pattern on [EncryptFileLoader.loadAndDecrypt]
sealed class LoaderResult {}

/// Load is success
@immutable
class LoaderSuccess implements LoaderResult {
  const LoaderSuccess({
    required this.data,
    required this.filename,
  });

  final Uint8List data;
  final String? filename;
}

/// Load is success but data is empty
@immutable
class LoaderEmpty implements LoaderResult {
  const LoaderEmpty();
}

/// Load is failed
@immutable
class LoaderFailed implements LoaderResult {
  const LoaderFailed();
}

/// Load is failed by SocketException
@immutable
class LoaderConnectionError implements LoaderResult {
  const LoaderConnectionError();
}

/// Load is failed by HttpException
@immutable
class LoaderUrlError implements LoaderResult {
  const LoaderUrlError();
}

/// Load is failed by FormatException
@immutable
class LoaderFormatError implements LoaderResult {
  const LoaderFormatError();
}

/// Result pattern on [EncryptFileLoader.load]
enum LoadResult {
  /// data is cached
  cached,

  /// data is loaded from server
  load,

  /// failed request
  failed,

  /// SocketException
  connectionError,

  /// HttpException
  urlError,

  /// FormatException
  formatError,
}
