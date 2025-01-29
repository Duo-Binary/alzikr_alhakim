import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SnackbarContentWidget extends StatelessWidget {
  const SnackbarContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("تم الحفظ",
            style: Styles.bold18.copyWith(color: AppColors.whiteColor)),
        const SizedBox(width: 4),
        Icon(Icons.done, color: AppColors.whiteColor, size: 24),
      ],
    );
  }
}
