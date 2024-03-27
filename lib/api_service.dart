import 'dart:convert';

import 'package:http/http.dart' as http;

class APIService {
  static Future getSources(String category) async {
    try {
      final uri = Uri.https(
        'newsapi.org',
        '/v2/top-headlines/sources',
        {
          'apikey': '0cb6270f97b94e39b227549cedae7a93',
          'category': category,
        },
      );
      final response = await http.get(uri);
      final json = jsonDecode(response.body);
    } catch (error) {
      print(error);
      // throw (error);
      rethrow;
    }
  }
}
