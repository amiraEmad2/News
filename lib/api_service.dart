import 'dart:convert';

import 'package:http/http.dart' as http;

import 'modeles/service.dart';

class APIService {
  static Future getSources(String sports) async {
    try {
      final uri = Uri.https(
        'newsapi.org',
        '/v2/top-headlines/sources',
        {
          'apikey': '0cb6270f97b94e39b227549cedae7a93',
          'category': sports,
        },
      );
      final response = await http.get(uri);
      final json = jsonDecode(response.body);
      return SourcesResponse.fromJson(json);
    } catch (error) {
      print(error);
      // throw (error);
      rethrow;
    }
  }
}
