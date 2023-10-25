import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/SourceResponse.dart';

class APIManager {
  static Future<SourceResponse> getSources() async {
    try {
      Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources",
          {"apiKey": "249d6b48d68e4ed1a56c8b32fa6666ef"});
      http.Response response = await http.get(url);
      var jsonData = jsonDecode(response.body);
      SourceResponse sourceResponse = SourceResponse.fromJson(jsonData);
      return sourceResponse;
    } catch (e) {
      throw Exception();
    }
  }
}
