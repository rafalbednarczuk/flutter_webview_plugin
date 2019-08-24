import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: <Widget>[
        Expanded(
          child: WebviewScaffold(
            appBar: AppBar(
              title: const Text('Title'),
            ),
            url: 'https://wp.pl',
            webviewReference: FlutterWebviewPlugin(),
          ),
        ),
        Container(height: 50, color: Colors.red),
      ],
    ));
  }
}
