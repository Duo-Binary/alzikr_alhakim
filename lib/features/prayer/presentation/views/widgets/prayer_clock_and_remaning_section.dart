import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:alzikr_alhakim/core/utils/custom_svg.dart';
import 'package:flutter/material.dart';

import 'prayer_remaning_time.dart';

class PrayerClockAndRemaningSection extends StatelessWidget {
  const PrayerClockAndRemaningSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSvg(image: Assets.imagesClock),
        const SizedBox(height: 20),
        PrayerRemaningTime(),
      ],
    );
  }
}
