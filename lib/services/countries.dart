import 'package:http/http.dart';
import 'dart:convert';

class Country{

String name;
String total;
String recovered;
String deaths;
  Country(this.name);
  Future<void> getCountriesData() async {
    Response res = await get('https://covid19.mathdro.id/api/countries/$name');
    Map CountryData = jsonDecode(res.body);
    
    total = CountryData['confirmed']['value'].toString();
    recovered = CountryData['recovered']['value'].toString();
    deaths = CountryData['deaths']['value'].toString();
  }
}

