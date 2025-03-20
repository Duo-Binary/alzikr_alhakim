import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.thickness});
  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      color: AppColors.backgroundColor,
    );
  }
}
