import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.query);

  final String query;

  Future<dynamic> getData() async {
    http.Response response =
        await http.get('http://192.168.1.104:5000/api?Query=$query');
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

// 192.168.1.104:5000
