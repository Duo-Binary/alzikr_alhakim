import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'prayer_clock_and_remaning_section.dart';
import 'prayer_time_and_place_widget.dart';
import 'prayer_view_header.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        PrayerViewHeader(),
        const SizedBox(height: 24),
        PrayerTimeAndPlaceWidget(),
        const SizedBox(height: 20),
        PrayerClockAndRemaningSection(),
        Spacer(),
        Container(
          height: 295,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.imagesPrayerBackground))),
        ),
      ],
    );
  }
}
