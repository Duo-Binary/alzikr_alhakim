import 'package:flutter/material.dart';
import 'package:quran/quran.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/arrow_back_widget.dart';

class SuraViewArrowBack extends StatelessWidget {
  const SuraViewArrowBack({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ArrowBackWidget(),
        Text(
          getSurahNameArabic(getPageData(index)[0]['surah']),
          style: Styles.bold14,
        ),
      ],
    );
  }
}
