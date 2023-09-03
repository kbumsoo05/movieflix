import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String popularMovieUrl =
      "https://movies-api.nomadcoders.workers.dev/popular";

  Future<String> getTodaysToons() async {
    final url = Uri.parse(popularMovieUrl);
    final respone = await http.get(url);
    if (respone.statusCode == 200) {
      return jsonDecode(respone.body);
    }
    throw Error();
  }
}
