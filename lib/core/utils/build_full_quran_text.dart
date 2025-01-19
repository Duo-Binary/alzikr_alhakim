import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../features/quran/data/models/quran_model.dart';
import 'format_verse_number.dart';

List<TextSpan> buildFullQuranText(List<Verses> verses) {
  List<TextSpan> textSpans = [];

  for (var verse in verses) {
    textSpans.add(TextSpan(
      text: '${verse.text}  ',
      style: Styles.quran20,
    ));

    textSpans.add(TextSpan(
      text: " \u06DD${formatVerseNumber(verse.id!)} ",
      style: Styles.ayat20,
    ));
  }
  return textSpans;
}
