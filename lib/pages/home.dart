import 'package:flutter/material.dart';
//
import 'package:t1/widgets/home_page.dart';
import 'package:t1/widgets/info_page.dart';
import 'package:t1/widgets/india_statistic_page.dart';
import 'package:t1/widgets/world_statictics_page.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   Map data = {};
   List<dynamic> countriesData;
  int _currentindex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    //countriesData = data['countiesData'];
    //print(countriesData);
    //print(data['statesData']);
    List<Widget> _widgetOptions = <Widget>[
      HomePage(),
      IndiaStaticticsPage(data),
      WorldStaticticsPage(data),
      InfoPage(),
    ];
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentindex),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
           backgroundColor: Colors.grey[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            title: Text('India'),
            backgroundColor: Colors.grey[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('World'),
            backgroundColor: Colors.grey[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            title: Text('info'),
            backgroundColor: Colors.grey[900],
          ),
        ],
        
        currentIndex: _currentindex,
        unselectedItemColor: Colors.amber[400],
        
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}




