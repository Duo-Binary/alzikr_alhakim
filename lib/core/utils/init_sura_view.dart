import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../features/quran/presentation/manager/sura/sura_bloc.dart';

void initSuraView(BuildContext context, PageController pageController) {
  WakelockPlus.enable();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  final sura = context.read<SuraBloc>();
  pageController.addListener(() {
    if (sura.isSuraClicked) {
      if (pageController.position.pixels != 0) {
        sura.add(SuraScrollEvent());
      }
    }
  });
}
