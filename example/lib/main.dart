import 'dart:convert';
import 'dart:typed_data';

import 'package:encrypt_file_loader/encrypt_file_loader.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _db = EncryptFileLoader();
  String _result = 'no loaded data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_result),
            ElevatedButton(
              onPressed: () async {
                final value = await _db.loadAndDecrypt(
                  url:
                      'https://raw.githubusercontent.com/koji-1009/encrypt_file_loader/main/fixture/plain.json',
                  type: const TypePlain(),
                  responseType: ResponseType.bodyBytes,
                );

                setState(() {
                  _result = switch (value) {
                    LoaderSuccess(
                      data: final data,
                    ) =>
                      utf8.decode(data),
                    _ => 'no loaded data',
                  };
                });
              },
              child: const Text('load plain text'),
            ),
            ElevatedButton(
              onPressed: () async {
                final key = await AesCbcSecretKey.importRawKey([
                  169,
                  153,
                  153,
                  89,
                  151,
                  174,
                  104,
                  213,
                  193,
                  185,
                  118,
                  112,
                  123,
                  39,
                  157,
                  141,
                ]);
                final iv = Uint8List.fromList(
                  [
                    205,
                    108,
                    3,
                    111,
                    125,
                    147,
                    153,
                    175,
                    228,
                    101,
                    195,
                    225,
                    18,
                    252,
                    192,
                    222,
                  ],
                );

                final value = await _db.loadAndDecrypt(
                  url:
                      'https://raw.githubusercontent.com/koji-1009/encrypt_file_loader/main/fixture/aes_cbc.json',
                  type: TypeAesCbc(
                    key: key,
                    iv: iv,
                  ),
                  responseType: ResponseType.bodyText,
                );

                setState(() {
                  _result = switch (value) {
                    LoaderSuccess(
                      data: final data,
                    ) =>
                      utf8.decode(data),
                    _ => 'no loaded data',
                  };
                });
              },
              child: const Text('load aes cbc'),
            ),
          ],
        ),
      ),
    );
  }
}
