import 'package:flutter/material.dart';
import 'package:t1/pages/home.dart';
import 'package:t1/pages/loading.dart';

//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(
      MaterialApp(
        

        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
        },
      ),
    );

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: TestPage());
//   }
// }

// class TestPage extends StatefulWidget {
//   @override
//   _TestPageState createState() => _TestPageState();
// }

// class _TestPageState extends State<TestPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//           child: WebviewScaffold(
//         // appBar: AppBar(title: Text("Hello")),
//         url: "https://www.bing.com/covid/local/india",
//         withZoom: true,
//         withJavascript: true,
//       ),
//     );
//   }
// }
