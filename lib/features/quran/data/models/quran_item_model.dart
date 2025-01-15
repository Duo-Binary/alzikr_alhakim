class QuranItemModel {
  final String suraNumber, arName, enName, type, verseCount;
  final int? index;
  QuranItemModel(
      {required this.suraNumber,
      required this.arName,
      required this.enName,
      required this.type,
      required this.verseCount,
      this.index});
}
