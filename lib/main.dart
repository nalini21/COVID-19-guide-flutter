import 'package:flutter/material.dart';
import 'package:t1/pages/home.dart';
import 'package:t1/pages/loading.dart';



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

