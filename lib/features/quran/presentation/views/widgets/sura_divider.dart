import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

class SuraDivider extends StatelessWidget {
  const SuraDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120 / 2),
      child: Divider(
        thickness: .7,
        color: AppColors.whiteColor.withValues(alpha: .7),
      ),
    );
  }
}
