import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart';

import 'sura_juz_and_page_widget.dart';
import '../../../../../core/widgets/sura_and_doaa_arrow_back.dart';

class SuraViewHeader extends StatelessWidget {
  const SuraViewHeader({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SuraAndDoaaArrowBack(
              text: getSurahNameArabic(getPageData(index)[0]['surah'])),
          Spacer(),
          SuraJuzAndPageWidget(index: index),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
