import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  Future<dynamic> getBookData(String query) async {
    print(Uri.parse('http://localhost:9090/book/$query'));
    http.Response response =
        await http.get(Uri.parse('http://localhost:9090/book/$query'));
    if (response.statusCode == 200) {
      String data = response.body;
//      print(data);
//      print(jsonDecode(data));
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getTvData(String query) async {
    print(query);
    print(Uri.parse('http://localhost:9090/tvs/$query'));
    http.Response response =
        await http.get(Uri.parse('http://localhost:9090/tvs/$query'));
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
//      print(jsonDecode(data));
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getMovieData(String query) async {
    print(query);
    print(Uri.parse('http://localhost:9090/movie/$query'));
    http.Response response =
        await http.get(Uri.parse('http://localhost:9090/movie/$query'));

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
//      print(jsonDecode(data));
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getGameData(String query) async {
    print(Uri.parse('http://localhost:9090/game/$query'));
    http.Response response =
        await http.get(Uri.parse('http://localhost:9090/game/$query'));
    if (response.statusCode == 200) {
      String data = response.body;
//      print(data);
//      print(jsonDecode(data));
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

// 192.168.1.104:5000
