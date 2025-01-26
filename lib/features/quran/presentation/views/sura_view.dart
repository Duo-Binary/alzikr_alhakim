import 'dart:developer';

import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import 'widgets/sura_view_body.dart';

class SuraView extends StatefulWidget {
  const SuraView({super.key, this.index = 0});
  final int index;

  @override
  State<SuraView> createState() => _SuraViewState();
}

class _SuraViewState extends State<SuraView> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: widget.index);
    WakelockPlus.enable();
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("height: ${MediaQuery.sizeOf(context).height}");
    log("width: ${MediaQuery.sizeOf(context).width}");
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SuraViewBody(pageController: pageController),
    );
  }
}
