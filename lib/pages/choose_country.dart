import 'package:flutter/material.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Text(
          'choose country screen',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}