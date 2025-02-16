import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/custom_svg.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PrayerViewHeader extends StatelessWidget {
  const PrayerViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSvg(image: Assets.imagesTimerIcon),
        Text("وقت الصلاة",
            style: Styles.semiBold18.copyWith(color: AppColors.primaryColor)),
      ],
    );
  }
}
