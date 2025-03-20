import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/navigation.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../manager/home/home_cubit.dart';

class HomeAlertDialog extends StatelessWidget {
  const HomeAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final home = BlocProvider.of<HomeCubit>(context);

    return AlertDialog(
      titlePadding:
          EdgeInsets.only(top: 12.h, bottom: 10.h, right: 24.w, left: 24.w),
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      backgroundColor: AppColors.whiteColor,
      title: Center(
        child: Text("تحديث جديد متاح",
            style: Styles.bold20.copyWith(color: AppColors.blackColor)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text(
              "لقد أضفنا تحسينات رائعة وتجربة أفضل! قم بتحديث التطبيق الآن للاستمتاع بأحدث الميزات",
              textAlign: TextAlign.center,
              style: Styles.medium16.copyWith(color: AppColors.blackColor),
            ),
          ),
          const Divider(height: 0),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () => Navigation.pop(context),
                    child: Text("لاحقًا", style: Styles.bold18)),
                const VerticalDivider(width: 0),
                TextButton(
                    onPressed: () async {
                      if (home.downloadUrl != null) {
                        await home.launchDownloadUrl(home.downloadUrl!);
                      }
                    },
                    child: Text("تحديث الآن", style: Styles.bold18)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
