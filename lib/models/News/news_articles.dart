
import 'package:news/models/News/articles.dart';

class NewsArticles {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  NewsArticles({this.status, this.totalResults, this.articles});

  NewsArticles.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    totalResults = json["totalResults"];
    articles = json["articles"] == null ? null : (json["articles"] as List).map((e) => Articles.fromJson(e)).toList();
  }

  static List<NewsArticles> fromList(List<Map<String, dynamic>> list) {
    return list.map(NewsArticles.fromJson).toList();
  }
}



