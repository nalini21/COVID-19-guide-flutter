import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:t1/services/india_data.dart';
import 'package:t1/services/world_data.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void setData() async {
    WorldData worldData= WorldData();
    IndiaData indiaData= IndiaData();
    await worldData.getWorldData();
    await indiaData.getIndiaData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
        'worldTotal': worldData.total,
        'worldRecovered': worldData.recovered,
        'worldDeaths': worldData.deaths,
        'worldActive': worldData.active,
        'indiaTotal': indiaData.total,
        'indiaRecovered': indiaData.recovered,
        'indiaDeaths': indiaData.deaths,
        'indiaActive': indiaData.active,
        'countriesData': worldData.countriesData,
        'statesData': indiaData.statesData,
    });
  }
  @override
  void initState() { 
    super.initState();
    setData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
        body: Center(
      child: SpinKitWave(
        color: Colors.white,
        size: 80.0,
      ),
    ));
  }
}
