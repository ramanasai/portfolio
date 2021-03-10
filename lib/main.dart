import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/blog_Link.dart';
import 'blog.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalki',
      theme: ThemeData.dark(),
      home: MyHomePage(
        title: 'Kalki',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 110,
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/profile_images/1137996704521711620/X1ePDVCf_400x400.jpg"),
              ),
            ),
            Text(
              'P B Sai Ramana',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Hi I'm Know as P.B Sai Ramana. I Love to Learn, Code, Design, Hack, Teach, Enjoy, and So on. ",
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Text("Blog")),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: WebView(
          initialUrl: "google.com",
          // javascriptMode: JavascriptMode.unrestricted,
        ),
      // body: Text('hi'),
    );
  }
}
