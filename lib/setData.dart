import 'package:http/http.dart';
import 'dart:convert';

class Data {
  Future<void> getdata() async {
    // make the request
    Response response = await get('http://e6ab739ec20e.ngrok.io/ypathi');
    Map data = jsonDecode(response.body);
    dynamic max = data["max"];
    return max;
  }
}