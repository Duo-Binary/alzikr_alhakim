class QuranModel {
  int? id;
  String? name;
  String? transliteration;
  String? type;
  int? totalVerses;
  List<Verses>? verses;

  QuranModel(
      {this.id,
      this.name,
      this.transliteration,
      this.type,
      this.totalVerses,
      this.verses});

  factory QuranModel.fromJson(Map<String, dynamic> json) {
    return QuranModel(
      id: json["id"],
      name: json["name"],
      transliteration: json["transliteration"],
      type: json["type"],
      totalVerses: json["total_verses"],
      verses: (json["verses"] as List).map((e) => Verses.fromJson(e)).toList(),
    );
  }
}

class Verses {
  int? id;
  String? text;

  Verses({this.id, this.text});

  factory Verses.fromJson(Map<String, dynamic> json) {
    return Verses(
      id: json["id"],
      text: json["text"],
    );
  }
}
