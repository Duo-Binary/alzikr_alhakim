import 'package:flutter/material.dart';
import 'package:quran/quran.dart';

import 'no_sura_widget.dart';
import 'sura_quran_found.dart';

class SuraViewBody extends StatelessWidget {
  const SuraViewBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: PageView.builder(
            controller: pageController,
            itemCount: totalPagesCount + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return NoSuraWidget();
              }
              return SuraQuranFound(index: index);
            }),
      ),
    );
  }
}

