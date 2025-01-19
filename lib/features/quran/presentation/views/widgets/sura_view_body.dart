import 'package:flutter/material.dart';

import '../../../data/models/quran_model.dart';
import 'sura_arrow_and_header_and_quran_text_section.dart';

class SuraViewBody extends StatelessWidget {
  const SuraViewBody({super.key, required this.quran});
  final QuranModel quran;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SuraArrowAndHeaderAndQuranTextSection(quran: quran),
          )
        ],
      ),
    );
  }
}
