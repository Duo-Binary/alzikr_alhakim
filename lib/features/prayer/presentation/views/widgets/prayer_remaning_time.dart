import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/prayer/presentation/manager/prayer/prayer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/prayer_column_model.dart';
import 'prayer_column_item.dart';

class PrayerRemaningTime extends StatelessWidget {
  const PrayerRemaningTime({super.key});

  @override
  Widget build(BuildContext context) {
    final prayer = context.watch<PrayerCubit>().getRemaningTime();

    return Row(
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      children: [
        PrayerColumnItem(
            prayerColumnModel: PrayerColumnModel(
                text1: "الوقت المتبقي",
                text2: "لصلاة ${prayer.prayerName}",
                style1: Styles.regular12
                    .copyWith(color: Color(0xff1E1E1E).withValues(alpha: .5)),
                style2:
                    Styles.semiBold14.copyWith(color: AppColors.primaryColor))),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("${prayer.prayerTime}-", style: Styles.light20))
      ],
    );
  }
}
