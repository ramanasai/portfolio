import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class blogg extends StatefulWidget {
  blogg({Key key}) : super(key: key);

  @override
  _bloggState createState() => _bloggState();
}

class _bloggState extends State<blogg> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: WebView(
          initialUrl: 'https://flutter.dev/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

// class blogg extends StatelessWidget {
//   @override
//   Widget build (BuildContext ctxt) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Multi Page Application Page-1"),
//       ),
//       body: Expanded(
//         child: WebView(
//           initialUrl: 'https://flutter.dev/',
//           javascriptMode: JavascriptMode.unrestricted,
//         ),
//       ),
//     );
//   }
// }