class QuranModel {
  final String id, name, englishName, type;
  final int verses;

  QuranModel({
    required this.id,
    required this.name,
    required this.englishName,
    required this.type,
    required this.verses,
  });

  factory QuranModel.fromJson(Map<String, dynamic> json) {
    return QuranModel(
      id: json["id"],
      name: json["name"],
      englishName: json["englishName"],
      type: json["type"],
      verses: json["verses"],
    );
  }
}
