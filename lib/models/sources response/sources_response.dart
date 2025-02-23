
import 'package:news/models/sources%20response/sources.dart';

class SourcesResponse {
  String? status;
  List<Sources>? sources;

  SourcesResponse({this.status, this.sources});

  SourcesResponse.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources.fromJson(e)).toList();
  }

  static List<SourcesResponse> fromList(List<Map<String, dynamic>> list) {
    return list.map(SourcesResponse.fromJson).toList();
  }

}

