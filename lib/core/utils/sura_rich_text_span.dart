import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart';

import '../../features/quran/presentation/views/widgets/sura_basmallah_widget.dart';
import '../../features/quran/presentation/views/widgets/sura_header_widget.dart';

List<InlineSpan> suraRichTextSpan(int index) {
  return getPageData(index).expand((e) {
    List<InlineSpan> children = [];
    for (var i = e['start']; i <= e['end']; i++) {
      if (i == 1) {
        children.add(WidgetSpan(child: SuraHeaderWidget(e: e)));
        if (index != 187 && index != 1) {
          children.add(WidgetSpan(
            child: SuraBasmallahWidget(),
          ));
        }
      }
      children.add(TextSpan(
          text: i == e["start"]
              ? "${getVerseQCF(e["surah"], i).replaceAll(" ", "").substring(0, 1)}\u200A${getVerseQCF(e["surah"], i).replaceAll(" ", "").substring(1)}"
              : getVerseQCF(e["surah"], i).replaceAll(' ', ''),
          style: Styles.quranText(index)));
    }
    return children;
  }).toList();
}
