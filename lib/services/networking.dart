import 'package:http/http.dart' as http;
import 'dart:convert';


class Networking{

  Networking({required this.url});
  final String url;


  Future getWeatherData() async
  {
    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode>=200&& response.statusCode<=300 )
    {
      String Data =response.body;
      return jsonDecode(Data);
    }
    else
    {
      print(response.statusCode);
    }


  }


}