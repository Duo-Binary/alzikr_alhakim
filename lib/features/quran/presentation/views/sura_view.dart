import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/widgets/sura_view_body2.dart';
import 'package:flutter/material.dart';

import '../../data/models/quran_model.dart';

class SuraView extends StatelessWidget {
  const SuraView({super.key, required this.quran, this.index = 0});
  final QuranModel quran;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: SuraViewBody2(index: index))),
    );
  }
}
