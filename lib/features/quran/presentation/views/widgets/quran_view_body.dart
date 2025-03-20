import 'package:flutter/material.dart';

import 'quran_header_and_text_fiel_section.dart';
import 'quran_sliver_list.dart';

class QuranViewBody extends StatelessWidget {
  const QuranViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: QuranHeaderAndTextFieldSection(),
        ),
        QuranSliverList(),
      ],
    );
  }
}
