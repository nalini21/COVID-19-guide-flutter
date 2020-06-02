import 'package:flutter/material.dart';

class ChooseState extends StatefulWidget {
  @override
  _ChooseStateState createState() => _ChooseStateState();
}

class _ChooseStateState extends State<ChooseState> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Text(
          'choose state screen',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}