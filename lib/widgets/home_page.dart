import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 2340, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.grey[800],
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10,),
          SizedBox(
              height: 250.0,
              width: 450.0,
              child: Carousel(
                images: [
                  AssetImage("assets/images/download.jpg"),
                  AssetImage('assets/images/corona2.jpg'),
                  AssetImage('assets/images/corona1.jpg'),
                  AssetImage("assets/images/india3.jpg"),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightBlueAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.grey.withOpacity(0.5),
                borderRadius: true,
              )),
        ],
      ),
    );
  }
}
