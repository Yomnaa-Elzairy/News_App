class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  static List<Source> fromList(List<Map<String, dynamic>> list) {
    return list.map(Source.fromJson).toList();
  }

}