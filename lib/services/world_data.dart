import 'package:http/http.dart';
import 'dart:convert';


class WorldData {
  String total;
 String active;
  String recovered;
  String deaths;
  List countriesData;
  Future<void> getWorldData() async {
    // try {
      // Response res = await get('https://covid19.mathdro.id/api');
      // Map worldData = jsonDecode(res.body);
      Response res1 = await get('https://coronavirus-19-api.herokuapp.com/countries');
      //print('hi');
      countriesData= jsonDecode(res1.body);
      //print(countriesData);
       //countries= countries;
      total = countriesData[0]['cases'].toString();
      recovered = countriesData[0]['recovered'].toString();
      deaths =countriesData[0]['deaths'].toString();
      active = countriesData[0]['active'].toString();

    // } catch (e) {
    //   print('error in getting world data');
    //   print(e);
    // }
  }
}
