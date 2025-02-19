import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../data/models/prayer_list_tile_model.dart';
import 'prayer_list_tile_row.dart';

class PrayerListTileItem extends StatelessWidget {
  const PrayerListTileItem({super.key, required this.prayerListTileModel});
  final PrayerListTileModel prayerListTileModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: prayerListTileModel.isPrayerTime
            ? AppColors.primaryColor.withValues(alpha: .7)
            : Color(0xffF5F5F5).withValues(alpha: .5),
        child: ListTile(
          leading: PrayerListTileRow(
              isPrayerTime: prayerListTileModel.isPrayerTime,
              height: prayerListTileModel.height ?? 14,
              image: prayerListTileModel.leadingImage,
              text: prayerListTileModel.leadingText),
          trailing: PrayerListTileRow(
              isPrayerTime: prayerListTileModel.isPrayerTime,
              height: 22,
              image:
                  prayerListTileModel.isPrayerTime ? Assets.imagesVoice : null,
              text: prayerListTileModel.trailingText),
        ));
  }
}
