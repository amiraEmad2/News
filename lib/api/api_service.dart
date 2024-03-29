import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/api_constants.dart';
import 'package:news/api/news.dart';

import '../modeles/service.dart';

class APIService {
  static Future <SourcesResponse>getSources(String categoryId) async {
    try {
      final uri = Uri.https(
        APIConstants.baseUrl,
        APIConstants.sourcesEndpoint ,
        {
          'apikey': APIConstants.apiKey,
          'category': categoryId,
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
  static Future<News>getNews(String sourceId) async{
    try {
      final uri = Uri.https(
          APIConstants.baseUrl,
          APIConstants.NewsEndpoint ,{
            'apikey': APIConstants.apiKey,
            'sources' :sourceId,
          },

      );
    final response = await http.get(uri);
        final json = jsonDecode(response.body);
    return News.fromJson(json);
    } catch (error) {
      print(error);
      // throw (error);
      rethrow;
    }
    }

}
