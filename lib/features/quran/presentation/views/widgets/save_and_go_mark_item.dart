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
        height: 30,
        width: 150,
        decoration:
            BoxDecoration(border: Border.all(color: AppColors.backgroundColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bookmark, color: AppColors.primaryColor, size: 22),
            const SizedBox(width: 4),
            Text(
              text,
              style: Styles.bold18.copyWith(fontFamily: "taha"),
            ),
          ],
        ),
      ),
    );
  }
}
