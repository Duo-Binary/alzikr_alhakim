class Record {
  final String latestVersion;
  final String downloadUrl;

  Record({required this.latestVersion, required this.downloadUrl});

  factory Record.fromJson(Map<String, dynamic> json) => Record(
        latestVersion: json['latest_version'],
        downloadUrl: json['download_url'],
      );
}
