import 'package:http/http.dart';
import 'dart:convert';


class WorldData {
  String total;
  String active;
  String recovered;
  String deaths;
  Future<void> getWorldData() async {
    try {
      Response res = await get('https://covid19.mathdro.id/api');
      Map worldData = jsonDecode(res.body);
    
      total = worldData['confirmed']['value'].toString();
      recovered = worldData['recovered']['value'].toString();
      deaths = worldData['deaths']['value'].toString();
      int act = worldData['confirmed']['value']-worldData['recovered']['value']-worldData['deaths']['value'];
      active= act.toString();

    } catch (e) {
      print('error in getting world data');
      print(e);
    }
  }
}
