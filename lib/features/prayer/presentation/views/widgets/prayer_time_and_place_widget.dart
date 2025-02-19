import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/format_milad_and_hijri_date_time.dart';
import '../../../data/models/prayer_column_model.dart';
import '../../manager/prayer/prayer_cubit.dart';
import 'prayer_column_item.dart';

class PrayerTimeAndPlaceWidget extends StatelessWidget {
  const PrayerTimeAndPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prayer = context.watch<PrayerCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PrayerColumnItem(
            prayerColumnModel: PrayerColumnModel(
          size: 4,
          text1: formatMiladDateTime(),
          text2: "المكان",
          style2: Styles.regular12,
        )),
        PrayerColumnItem(
            prayerColumnModel: PrayerColumnModel(
                size: 4,
                text1: formatHijriDateTime(),
                crossAxisAlignment: CrossAxisAlignment.end,
                style1:
                    Styles.regular12.copyWith(color: AppColors.primaryColor),
                text2: prayer.locationName ?? "",
                style2:
                    Styles.regular12.copyWith(color: AppColors.primaryColor))),
      ],
    );
  }
}
