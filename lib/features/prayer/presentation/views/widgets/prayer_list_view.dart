import 'dart:developer';

import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'prayer_custom_scroll_view.dart';

class PrayerListView extends StatelessWidget {
  const PrayerListView({super.key});

  @override
  Widget build(BuildContext context) {
    log("listview");
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Assets.imagesPrayerBackground))),
        child: const PrayerCustomScrollView(),
      ),
    );
  }
}
