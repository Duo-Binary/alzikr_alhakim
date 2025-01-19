import 'package:flutter/material.dart';

import '../../../data/models/quran_model.dart';
import 'sura_arrow_back_widget.dart';
import 'sura_header_info.dart';

class SuraViewBody extends StatelessWidget {
  const SuraViewBody({super.key, required this.quran});
  final QuranModel quran;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const SuraArrowBackWidget(),
          const SizedBox(height: 20),
          SuraHeaderInfo(quran: quran),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

