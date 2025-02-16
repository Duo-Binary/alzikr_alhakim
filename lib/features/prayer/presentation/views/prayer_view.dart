import 'package:flutter/material.dart';

import 'widgets/prayer_view_body.dart';

class PrayerView extends StatelessWidget {
  const PrayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: PrayerViewBody(),
      )),
    );
  }
}
