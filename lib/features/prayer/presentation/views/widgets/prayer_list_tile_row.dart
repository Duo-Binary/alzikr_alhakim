import 'package:alzikr_alhakim/core/utils/custom_svg.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PrayerListTileRow extends StatelessWidget {
  const PrayerListTileRow(
      {super.key,
      this.image,
      required this.text,
      this.height,
      required this.isPrayerTime});
  final String? image;
  final String text;
  final double? height;

  final bool isPrayerTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (image != null) CustomSvg(image: image!, height: height),
        Text(text, style: isPrayerTime ? Styles.semiBold16 : Styles.light16),
      ],
    );
  }
}
