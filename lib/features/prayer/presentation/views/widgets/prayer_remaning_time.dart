import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../data/models/prayer_column_model.dart';
import 'prayer_column_item.dart';

class PrayerRemaningTime extends StatelessWidget {
  const PrayerRemaningTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      children: [
        PrayerColumnItem(
            prayerColumnModel: PrayerColumnModel(
                text1: "الوقت المتبقي",
                text2: "لصلاة الظهر",
                style1: Styles.regular12
                    .copyWith(color: Color(0xff1E1E1E).withValues(alpha: .5)),
                style2:
                    Styles.semiBold14.copyWith(color: AppColors.primaryColor))),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("04:55-", style: Styles.light20))
      ],
    );
  }
}
