import 'package:flutter/material.dart';

import 'get_quran_page_dir.dart';
import 'sura_view_header.dart';

class SuraQuranFound extends StatelessWidget {
  const SuraQuranFound({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        SuraViewHeader(index: index),
        SizedBox(height: 10),
        // SuraFullQuranText(index: index)
        Expanded(
          child: Image.asset(
            getQuranPageDir(index),
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
