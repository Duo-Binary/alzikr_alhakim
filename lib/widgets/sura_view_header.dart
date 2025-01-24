import 'package:flutter/material.dart';

import 'sura_juz_and_page_widget.dart';
import 'sura_view_arro_back.dart';

class SuraViewHeader extends StatelessWidget {
  const SuraViewHeader({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SuraViewArrowBack(index: index),
        Spacer(),
        SuraJuzAndPageWidget(index: index),
        Spacer(flex: 2),
      ],
    );
  }
}
