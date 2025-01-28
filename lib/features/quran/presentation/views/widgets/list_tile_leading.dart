import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:alzikr_alhakim/core/utils/custom_svg.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/format_verse_number.dart';

class ListTileLeading extends StatelessWidget {
  const ListTileLeading({super.key, required this.suraNumber});

  final String suraNumber;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomSvg(image: Assets.imagesLeadingIcon),
        Text(formatVerseNumber(int.parse(suraNumber)), style: Styles.medium16)
      ],
    );
  }
}
