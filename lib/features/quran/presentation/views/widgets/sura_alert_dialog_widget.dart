import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'alert_dialog_content.dart';

class SuraAlertDialogWidget extends StatelessWidget {
  const SuraAlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding:
          EdgeInsets.only(top: 12.h, bottom: 10.h, right: 24.w, left: 24.w),
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      backgroundColor: AppColors.whiteColor,
      title: Text("هل تريد وضع علامة عند هذه الصفحة ؟",
          style: Styles.bold20.copyWith(color: AppColors.blackColor)),
      content: AlertDialogContent(),
    );
  }
}
