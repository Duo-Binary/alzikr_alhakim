import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/navigation.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AlertDialogTextButton extends StatelessWidget {
  const AlertDialogTextButton({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed ?? () => Navigation.pop(context),
        child: Text(text,
            style: Styles.bold20.copyWith(color: AppColors.primaryColor)));
  }
}
