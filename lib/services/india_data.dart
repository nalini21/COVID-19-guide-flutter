import 'package:http/http.dart';
import 'dart:convert';

class IndiaData {
  String total;
  String recovered;
  String deaths;
  String active;
  List statesData;
  Future<void> getIndiaData() async {
    try {
      Response res =
          await get('https://coronavirus-19-api.herokuapp.com/countries/India');
      Map indiaData = jsonDecode(res.body);
      Response res1 =
          await get('https://api.rootnet.in/covid19-in/stats/latest');
      Map statesData1 = jsonDecode(res1.body);
       statesData = statesData1['data']['regional'];
     // print(statesData);
      total = indiaData['cases'].toString();
      recovered = indiaData['recovered'].toString();
      deaths = indiaData['deaths'].toString();
      active = indiaData['active'].toString();
    } catch (e) {
      print('error in getting india data');
    }
  }
}
