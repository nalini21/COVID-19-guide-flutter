import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Future<void> _launchURL(String url) async {
    //const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 2340, allowFontScaling: false);
    return Container(
      color: Colors.grey[700],
      child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blue),
            backgroundColor: Colors.grey[900],
              title: Text('About This App',
              style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 50.sp),),
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back))),
          body: Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(80.w, 20.h, 0, 20.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10.h),
                  Text(
                    'Sources:',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://www.healthline.com/health/coronavirus-covid-19');
                    },
                    child: Text(
                      'https://www.healthline.com/health/coronavirus-covid-19',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public');
                    },
                    child: Text(
                      'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://coronavirus-19-api.herokuapp.com/countries');
                    },
                    child: Text(
                      'https://coronavirus-19-api.herokuapp.com/countries',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://api.rootnet.in/covid19-in/stats/latest');
                    },
                    child: Text(
                      'https://api.rootnet.in/covid19-in/stats/latest',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    'Developed by:',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    'Nalini Ranjan\n4th year Undergraduate student at IIT Kharagpur',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.sp,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                   
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.email),
                          SizedBox(width: 20.w),
                          Text(
                            'naliniranjan21@gmail.com',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.sp,
                              
                            ),
                          ),
                        ]),
                  ),
            
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://github.com/nalini21');
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Tab(
                              icon: Image.asset("assets/images/git2.png"),
                              ),
                          SizedBox(width: 28.w),
                          Text(
                            'https://github.com/nalini21',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.sp,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: 500.h),
                  Container(
                    
                    child:
                          Text(
                            '09-06-2020',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                       
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
//\nhttps://www.healthline.com/health/coronavirus-covid-19\nhttps://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public\nhttps://coronavirus-19-api.herokuapp.com/countries\nhttps://api.rootnet.in/covid19-in/stats/latest\n
