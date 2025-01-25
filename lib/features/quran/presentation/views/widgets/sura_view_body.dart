import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart';

import 'no_sura_widget.dart';
import 'sura_full_quran_text.dart';
import 'sura_view_header.dart';

class SuraViewBody extends StatefulWidget {
  const SuraViewBody({super.key, required this.index});

  final int index;

  @override
  State<SuraViewBody> createState() => _SuraViewBodyState();
}

class _SuraViewBodyState extends State<SuraViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: widget.index);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        itemCount: totalPagesCount + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return NoSuraWidget();
          }
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
        });
  }
}
