import 'package:alzikr_alhakim/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/prayer_list_tile_model.dart';
import '../../manager/prayer/prayer_cubit.dart';
import 'prayer_list_tile_item.dart';

class PrayerCustomScrollView extends StatelessWidget {
  const PrayerCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    final prayer = context.watch<PrayerCubit>();
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            spacing: 24,
            children: prayer.prayerList.asMap().entries.map((entry) {
              return PrayerListTileItem(
                prayerListTileModel: PrayerListTileModel(
                    height: entry.key == 2
                        ? 24
                        : entry.key == 1
                            ? null
                            : 22,
                    isPrayerTime: prayer.getRemaningTime().prayerName ==
                        entry.value.prayerName,
                    leadingText: entry.value.prayerName,
                    leadingImage: prayer.getRemaningTime().prayerName ==
                            entry.value.prayerName
                        ? Constants.activeIcons[entry.key]
                        : Constants.unActiveIcons[entry.key],
                    trailingText: entry.value.prayerTime),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
