class PrayerListTileModel {
  final String leadingText, leadingImage, trailingText;
  final double? height;
  final bool isPrayerTime;

  PrayerListTileModel(
      {required this.leadingText,
      required this.leadingImage,
      required this.trailingText,
      this.height,
      this.isPrayerTime = false});
}
