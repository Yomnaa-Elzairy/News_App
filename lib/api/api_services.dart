import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/core/constants.dart';
import 'package:news/models/News/news_articles.dart';
import 'package:news/models/sources%20response/sources_response.dart';

class ApiServices {
  static Future<SourcesResponse> getSources(String categoryId) async {
    Uri uri = Uri.https(Constants.url, "${Constants.path}sources",
        {"apiKey": Constants.apiKey, "category": categoryId});
    http.Response response = await http.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    return SourcesResponse.fromJson(json);
  }

  static Future<NewsArticles> getNewsArticles(String source) async {
    Uri uri = Uri.https(Constants.url, Constants.path,
        {"apiKey": Constants.apiKey, "sources": source});
    http.Response response = await http.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    return NewsArticles.fromJson(json);
  }
}
