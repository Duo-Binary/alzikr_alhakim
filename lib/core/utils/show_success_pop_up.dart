import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/icon_handler.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';
void showCustomDialog(BuildContext context, {String? headerTitle, String? content}) {
  showDialog(
    context: context,
    barrierColor: Colors.transparent, // Make the background completely transparent
   builder: (BuildContext dialogContext) {
      Future.delayed(Duration(seconds: 3), () {
        if (dialogContext.mounted && Navigator.canPop(dialogContext)) {
          Navigator.pop(dialogContext);
        }
      });
      
      return Dialog(
        elevation: 2,
        backgroundColor: AppColors.backgroundColor,
        alignment: Alignment.topCenter,
        insetPadding: EdgeInsets.only(top: 14,right: 40,left: 36),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            mainAxisSize: MainAxisSize.min,

            children: [
               Expanded(
                 child: Text(
                  content ?? '',
                  textAlign: TextAlign.right,
                  style: Styles.ayat20.copyWith(fontSize: 14),
                               ),
               ),
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 14,
                child: drawSvgIcon('success', iconColor: AppColors.backgroundColor, height: 14, width: 14),
              ),
             
            ],
          ),
        ),
      );
    },
  );
}
