import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

// ignore: deprecated_member_use
import 'package:drift/web.dart';

const _databaseName = 'encrypt_file_loader';

/// for Web
LazyDatabase getDatabase() => LazyDatabase(
      () async {
        final result = await WasmDatabase.open(
          databaseName: _databaseName,
          sqlite3Uri: Uri.parse('sqlite3.wasm'),
          driftWorkerUri: Uri.parse('drift_worker.dart.js'),
          initializeDatabase: () async {
            final storage = await DriftWebStorage.indexedDbIfSupported(
              _databaseName,
            );
            await storage.open();

            final blob = await storage.restore();
            await storage.close();

            return blob;
          },
        );

        if (result.missingFeatures.isNotEmpty) {
          // Depending how central local persistence is to your app, you may want
          // to show a warning to the user if only unreliable implementations
          // are available.
          log('encrypt_file_loader: '
              'Using ${result.chosenImplementation} due to missing browser '
              'features: ${result.missingFeatures}');
        }

        return result.resolvedExecutor;
      },
    );
