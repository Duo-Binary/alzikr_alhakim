class Metadata {
  String? id;
  bool? private;
  DateTime? createdAt;

  Metadata({this.id, this.private, this.createdAt});

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        id: json['id'] as String?,
        private: json['private'] as bool?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'private': private,
        'createdAt': createdAt?.toIso8601String(),
      };
}
