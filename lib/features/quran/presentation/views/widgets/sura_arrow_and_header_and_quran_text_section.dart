import 'package:flutter/material.dart';

import '../../../data/models/quran_model.dart';
import 'full_quran_text_widget.dart';
import '../../../../../core/widgets/arrow_back_widget.dart';
import 'sura_header_info.dart';

class SuraArrowAndHeaderAndQuranTextSection extends StatelessWidget {
  const SuraArrowAndHeaderAndQuranTextSection({super.key, required this.quran});

  final QuranModel quran;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const ArrowBackWidget(),
        const SizedBox(height: 20),
        SuraHeaderInfo(quran: quran),
        const SizedBox(height: 24),
        FullQuranTextWidget(verses: quran.verses!)
      ],
    );
  }
}
