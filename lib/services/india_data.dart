import 'package:http/http.dart';
import 'dart:convert';

class IndiaData {
  String total;
  String recovered;
  String deaths;
  String active;
  Future<void> getIndiaData() async {
    try {
      Response res =
          await get('https://coronavirus-19-api.herokuapp.com/countries/India');
      Map indiaData = jsonDecode(res.body);

      total = indiaData['cases'].toString();
      recovered = indiaData['recovered'].toString();
      deaths = indiaData['deaths'].toString();
      active = indiaData['active'].toString();
     
    } catch (e) {
      print('error in getting india data');
    }
  }
}
