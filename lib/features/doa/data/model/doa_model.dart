class DoaModel {
  int? id;
  String? category;
  String? audio;
  String? filename;
  List<array>? verses;

  DoaModel({
   this.id,
   this.category,
   this.audio,
   this.filename,
   this.verses,
  });
   factory DoaModel.fromJson(Map<String, dynamic> json) {
    return DoaModel(
      id: json["id"],
      category: json["category"],
      filename: json["filename"],
      audio: json["audio"],
      verses: (json["array"] as List).map((e) => array.fromJson(e)).toList(),
    );
  }
}

class array {
  int? id;
  String? text;
  int? count;
  String? audio;
  String? filename;

  array({this.id, this.text,this.count,this.audio,this.filename,});

  factory array.fromJson(Map<String, dynamic> json) {
    return array(
      id: json["id"],
      text: json["text"],

      count: json["count"],
      audio: json["audio"],
      filename: json["filename"],
    );
  }
}