import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart';

import '../../../../../core/utils/format_verse_number.dart';

class SuraJuzAndPageWidget extends StatelessWidget {
  const SuraJuzAndPageWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 155.w,
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withValues(alpha: .8),
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(color: AppColors.whiteColor)),
      child: Center(
        child: Text(
          "صفحة ${formatVerseNumber(index)} | ${"جزء ${formatVerseNumber(getJuzNumber(getPageData(index)[0]['surah'], getPageData(index)[0]['start']))}"}",
          textAlign: TextAlign.center,
          style: Styles.suraHeader,
        ),
      ),
    );
  }
}
