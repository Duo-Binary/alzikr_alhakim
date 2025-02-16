import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/prayer/data/models/prayer_column_model.dart';
import 'package:flutter/material.dart';

class PrayerColumnItem extends StatelessWidget {
  const PrayerColumnItem({super.key, required this.prayerColumnModel});
  final PrayerColumnModel prayerColumnModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: prayerColumnModel.size ?? 0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(prayerColumnModel.text1,
            style: prayerColumnModel.style1 ?? Styles.regular12),
        Text(prayerColumnModel.text2,
            style: prayerColumnModel.style2 ?? Styles.light15),
      ],
    );
  }
}
