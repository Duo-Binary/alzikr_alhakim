import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart';

import 'no_quran_widget.dart';
import 'sura_full_quran_text.dart';
import 'sura_view_header.dart';

class SuraViewBody2 extends StatefulWidget {
  const SuraViewBody2({super.key, required this.index});

  final int index;

  @override
  State<SuraViewBody2> createState() => _SuraViewBody2State();
}

class _SuraViewBody2State extends State<SuraViewBody2> {
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
    final size = MediaQuery.sizeOf(context);

    return PageView.builder(
        controller: pageController,
        itemCount: totalPagesCount + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return NoQuranWidget();
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                const SizedBox(height: 10),
                SuraViewHeader(index: index),
                if ((index == 1 || index == 2))
                  SizedBox(height: (size.height * .15)),
                if ((index != 1 && index != 2)) SizedBox(height: 10),
                SuraFullQuranText(index: index)
              ],
            ),
          );
        });
  }
}
