import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:alzikr_alhakim/core/utils/custom_svg.dart';
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
            color: Color(0xff575757).withValues(alpha: .8),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSvg(image: Assets.imagesSaveFilled),
            const SizedBox(width: 10),
            Text(
              text,
              style: Styles.tahaBold18,
            ),
          ],
        ),
      ),
    );
  }
}
