import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WorldStaticticsPage extends StatefulWidget {
  final Map data;
  //
  WorldStaticticsPage(this.data);
  @override
  _WorldStaticticsPageState createState() => _WorldStaticticsPageState();
}

class _WorldStaticticsPageState extends State<WorldStaticticsPage> {
  //final Map<dynamic,dynamic> countriesData= widget.data['countriesData'];
  //print(widget.data['countriesData']);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 2340, allowFontScaling: false);
    return Container(
      color: Colors.grey[700],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            //automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[900],
            title: Text(
              'CONFIRMED CASES WORLDWIDE',
              style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.grey[800],
          body: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      height: 925.h,
                      width: 1080.w,
                      child: Image(
                        image: AssetImage('assets/images/world2.jpg'),
                        fit: BoxFit.cover,
                      )),
                  GridView.count(
                    padding: EdgeInsets.fromLTRB(40.w, 670.h, 40.w, 0),
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 40.w,
                    mainAxisSpacing: 40.h,
                    shrinkWrap: true,
                    children: <Widget>[
                      _buildCard('Total', widget.data['worldTotal'], 1),
                      _buildCard('Active', widget.data['worldActive'], 2),
                      _buildCard('Recovered', widget.data['worldRecovered'], 3),
                      _buildCard('Deaths', widget.data['worldDeaths'], 4),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(60.w, 10.h, 60.w, 10.h),
                child: Column(children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.chevron_triple_up,
                    color: Colors.white.withOpacity(0.5),
                    size: 90.h,
                  ),
                  SizedBox(height: 20.h),
                  Icon(
                    MaterialCommunityIcons.chevron_triple_up,
                    color: Colors.white.withOpacity(0.5),
                    size: 90.h,
                  ),
                  SizedBox(height: 60.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.blue[600],
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 45.sp),
                        ),
                        Text(
                          'Total',
                          style: TextStyle(
                              color: Colors.amber[600],
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 45.sp),
                        ),
                        Text(
                          'Recovered',
                          style: TextStyle(
                              color: Colors.green[600],
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 45.sp),
                        ),
                        Text(
                          'Deaths',
                          style: TextStyle(
                              color: Colors.red[600],
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 45.sp),
                        ),
                      ]),
                ]),
              ),

              //SizedBox(height: 8),
              Container(
                height: 1580.h,
                margin: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 0),
                child: ListView.builder(

                    //addAutomaticKeepAlives: true,
                    shrinkWrap: true,
                    itemCount: widget.data['countriesData'].length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.grey[100],
                        elevation: 6.h,
                        shadowColor: Colors.grey[100],

                        //color: Colors.grey[100],
                        margin: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 30.h),
                        child: ListTile(
                          
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(
                              //   Icons.trending_up,
                              //   color: Colors.red,
                              //   size: 70.h,
                              // ),
                              // SizedBox(width: 330.w,),
                              Text(
                                '${widget.data['countriesData'][index]['country']}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    letterSpacing: 2.w,
                                    fontSize: 40.sp),
                              ),
                            ],
                          ),

                          subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                //SizedBox(height: 20),
                                Text(
                                    '${widget.data['countriesData'][index]['todayCases']}',
                                    style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35.sp,
                                    ),
                                  ),
                                Text(
                                  '${widget.data['countriesData'][index]['cases']}',
                                  style: TextStyle(
                                    color: Colors.amber[700],
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    fontSize: 35.sp,
                                    //letterSpacing: 1,
                                  ),
                                ),
                                //SizedBox(width: 30),
                                Text(
                                  '${widget.data['countriesData'][index]['recovered']}',
                                  style: TextStyle(
                                    color: Colors.green[700],
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    fontSize: 35.sp,
                                    //letterSpacing: 1,
                                  ),
                                ),
                                //SizedBox(width: 30),
                                Text(
                                  '${widget.data['countriesData'][index]['deaths']}',
                                  style: TextStyle(
                                    color: Colors.red[700],
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    fontSize: 35.sp,
                                    //letterSpacing: 1,
                                  ),
                                ),
                              ]),
                          //${Country(widget.countryNames[index])}
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w)),
        elevation: 20.h,
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.w),
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.w)),
              )
            ]),
            Text(
              '$name',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 55.sp,
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0.w),
                          bottomRight: Radius.circular(30.0.w)),
                    ),
                    child: Center(
                      child: Text(
                        '$status',
                        style: TextStyle(
                            fontSize: 65.sp,
                            color: Colors.white,
                            fontFamily: 'Quicksand'),
                      ),
                    )))
          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(7.0.w, 0.0, 21.0.w, 10.0.h)
            : EdgeInsets.fromLTRB(24.0.w, 0.0, 4.0.w, 10.0.h));
  }
}
