import 'package:alzikr_alhakim/features/quran/presentation/manager/sura/sura_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart';

import 'no_sura_widget.dart';
import 'sura_quran_found.dart';
import 'sura_save_and_go_mark_widget.dart';

class SuraViewBody extends StatelessWidget {
  const SuraViewBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final sura = context.watch<SuraBloc>();
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
              return GestureDetector(
                  onTap: () {
                    sura.add(SuraClickEvent());
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SuraQuranFound(index: index),
                      if (sura.isSuraClicked) SuraSaveAndGoMarkWidget()
                    ],
                  ));
            }),
      ),
    );
  }
}
