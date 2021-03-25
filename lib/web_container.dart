import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebContainer extends StatefulWidget {
  static String routeName = "/web";

  @override
  _WebContainer createState() => _WebContainer();
}

class _WebContainer extends State<WebContainer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'https://supribitexdemo.xyz',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
    // );
  }
}
