import 'package:flutter/material.dart';

import '../../../../../core/utils/build_full_quran_text.dart';
import '../../../data/models/quran_model.dart';

class FullQuranTextWidget extends StatelessWidget {
  const FullQuranTextWidget({super.key, required this.verses});

  final List<Verses> verses;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.justify,
        textDirection: TextDirection.rtl,
        text: TextSpan(children: buildFullQuranText(verses)));
  }
}
