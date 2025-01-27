import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'sura_full_quran_text.dart';
import 'sura_view_header.dart';

class SuraQuranFound extends StatelessWidget {
  const SuraQuranFound({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        children: [
          const SizedBox(height: 10),
          SuraViewHeader(index: index),
          SizedBox(height: 10),
          SuraFullQuranText(index: index)
        ],
      ),
    );
  }
}
