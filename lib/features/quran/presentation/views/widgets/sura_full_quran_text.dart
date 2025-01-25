import 'package:alzikr_alhakim/core/utils/sura_rich_text_span.dart';
import 'package:flutter/material.dart';

class SuraFullQuranText extends StatelessWidget {
  const SuraFullQuranText({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      softWrap: true,
      locale: const Locale("ar"),
      text: TextSpan(children: suraRichTextSpan(index)),
    );
  }
}
