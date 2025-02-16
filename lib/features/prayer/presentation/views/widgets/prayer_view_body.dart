import 'package:alzikr_alhakim/features/prayer/presentation/manager/prayer/prayer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'prayer_clock_and_remaning_section.dart';
import 'prayer_list_view.dart';
import 'prayer_time_and_place_widget.dart';
import 'prayer_view_header.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerCubit, PrayerState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 10),
            PrayerViewHeader(),
            const SizedBox(height: 24),
            PrayerTimeAndPlaceWidget(),
            const SizedBox(height: 20),
            PrayerClockAndRemaningSection(),
             SizedBox(height: 20.h),
            PrayerListView(),
          ],
        );
      },
    );
  }
}
