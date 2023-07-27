/*
import 'package:demo_widgets/RadioCheckbox.dart';
import 'package:flutter/material.dart';

import 'DataTableWid.dart';
import 'DropDown.dart';
import 'SnackBarWid.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioCheckbox(),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'DataTableWid.dart';

import 'DropDown.dart';
import 'GraphWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WebView Example'),
        ),
        body: DataTableWid(),
      ),
    );
  }
}

/*
class WebViewExample extends StatelessWidget {
  final String url = 'https://www.google.com'; // Replace with your desired URL

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}*/
