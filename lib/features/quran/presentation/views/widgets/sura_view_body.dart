import 'package:alzikr_alhakim/core/utils/init_sura_view.dart';
import 'package:alzikr_alhakim/features/quran/presentation/manager/sura/sura_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import 'no_sura_widget.dart';
import 'sura_quran_and_save_go_mark.dart';

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
    initSuraView(context, pageController);
    super.initState();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sura = context.read<SuraCubit>();
    return PageView.builder(
        controller: pageController,
        itemCount: totalPagesCount + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return NoSuraWidget();
          }
          return SuraQuranAndSaveGoMark(
            index: index,
            onTap: () {
              if (sura.index != null) {
                pageController.jumpToPage(sura.index!);
              }
            },
          );
        });
  }
}
