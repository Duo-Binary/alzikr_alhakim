import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../data/models/quran_model.dart';
import 'widgets/sura_view_body.dart';

class SuraView extends StatelessWidget {
  const SuraView({super.key, required this.quran});
  final QuranModel quran;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: SuraViewBody(quran: quran))),
    );
  }
}
