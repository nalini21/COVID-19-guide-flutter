//import 'package:device_preview/device_preview.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:t1/pages/home.dart';
import 'package:t1/pages/loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
      },
    ));

// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => MyApp(),
//   ),
// );

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       locale: DevicePreview.of(context).locale, // <--- Add the locale
//         builder: DevicePreview.appBuilder, // <--- Add the builder
//         debugShowCheckedModeBanner: false,
//         // theme: ThemeData(
//         // primaryColor: Colors.lightBlue[800],),
//         initialRoute: '/',
//         routes: {
//           '/': (context) => Loading(),
//           '/home': (context) => Home(),
//         },
//     );
//   }
// }
