import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/format_milad_and_hijri_date_time.dart';
import '../../../data/models/prayer_column_model.dart';
import 'prayer_column_item.dart';

class PrayerTimeAndPlaceWidget extends StatelessWidget {
  const PrayerTimeAndPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PrayerColumnItem(
            prayerColumnModel: PrayerColumnModel(
                size: 4,
                text1: formatMiladDateTime(),
                text2: formatHijriDateTime())),
        PrayerColumnItem(
            prayerColumnModel: PrayerColumnModel(
                size: 4,
                text1: "المكان",
                text2: "القاهرة، مصر",
                style2: Styles.medium18)),
      ],
    );
  }
}
