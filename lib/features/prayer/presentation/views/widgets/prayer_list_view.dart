import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../data/models/prayer_list_tile_model.dart';
import 'prayer_list_tile_item.dart';

class PrayerListView extends StatelessWidget {
  const PrayerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .45,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Assets.imagesPrayerBackground))),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              spacing: 24,
              children: [
                PrayerListTileItem(
                    prayerListTileModel: PrayerListTileModel(
                  height: 22,
                  leadingText: "الفجر",
                  leadingImage: Assets.imagesUnactiveFajr,
                  trailingText: "04:55",
                )),
                PrayerListTileItem(
                    prayerListTileModel: PrayerListTileModel(
                  leadingText: "الشروق",
                  leadingImage: Assets.imagesUnactiveShrok,
                  trailingText: "04:55",
                )),
                PrayerListTileItem(
                    prayerListTileModel: PrayerListTileModel(
                  height: 24,
                  isPrayerTime: true,
                  leadingText: "الظهر",
                  leadingImage: Assets.imagesActiveDzhur,
                  trailingText: "12:05",
                )),
                PrayerListTileItem(
                    prayerListTileModel: PrayerListTileModel(
                  height: 22,
                  leadingText: "العصر",
                  leadingImage: Assets.imagesUnactiveAser,
                  trailingText: "15:36",
                )),
                PrayerListTileItem(
                    prayerListTileModel: PrayerListTileModel(
                  height: 22,
                  leadingText: "المغرب",
                  leadingImage: Assets.imagesUnactiveMagrab,
                  trailingText: "19:15",
                )),
                PrayerListTileItem(
                    prayerListTileModel: PrayerListTileModel(
                  height: 22,
                  leadingText: "العشاء",
                  leadingImage: Assets.imagesUnactiveFajr,
                  trailingText: "20:45",
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
