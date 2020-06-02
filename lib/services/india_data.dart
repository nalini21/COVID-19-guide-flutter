import 'package:http/http.dart';
import 'dart:convert';

class IndiaData {
  String total;
  String recovered;
  String deaths;
  String active;
  String indianCitizen;
  String foreignCitizen;
  Future<void> getIndiaData() async {
    try {
      Response res =
          await get('https://api.rootnet.in/covid19-in/stats/latest');
      Map indiaData = jsonDecode(res.body);

      total = indiaData['data']['summary']['total'].toString();
      recovered = indiaData['data']['summary']['discharged'].toString();
      deaths = indiaData['data']['summary']['deaths'].toString();
      int act= indiaData['data']['summary']['total'] - indiaData['data']['summary']['discharged'] - indiaData['data']['summary']['deaths'];
      active = act.toString();
      indianCitizen = indiaData['data']['summary']['confirmedCasesIndian'].toString();
      foreignCitizen = indiaData['data']['summary']['confirmedCasesForeign'].toString();
    } catch (e) {
      print('error in getting india data');
    }
  }
}
