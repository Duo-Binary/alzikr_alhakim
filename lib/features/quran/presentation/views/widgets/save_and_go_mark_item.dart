import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SaveAndGoMarkItem extends StatelessWidget {
  const SaveAndGoMarkItem({super.key, required this.text, required this.onTap});
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 33,
        width: 150,
        decoration: BoxDecoration(
            color: AppColors.blackColor.withValues(alpha: .5),
            borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text(
            text,
            style: Styles.tahaBold18,
          ),
        ),
      ),
    );
  }
}
