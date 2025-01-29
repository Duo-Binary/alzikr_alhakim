import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

import 'snack_bar_content_widget.dart';

SnackBar alertDialogSnackbar(BuildContext context) {
  return SnackBar(
      backgroundColor: AppColors.blackColor.withValues(alpha: .8),
      behavior: SnackBarBehavior.floating,
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.only(
          right: MediaQuery.sizeOf(context).width / 3,
          left: MediaQuery.sizeOf(context).width / 3,
          bottom: MediaQuery.sizeOf(context).height / 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      content: SnackbarContentWidget());
}
