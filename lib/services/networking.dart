import 'package:http/http.dart' as http;
import 'dart:convert';

class Networkhelper{

  Networkhelper(this.url);
  final String url;
  Future getdata() async   
  {
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      print(response.statusCode);
      print("Error not found");
    }
  }
}