import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/navigation.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigation.pop(context),
      child: const Icon(Icons.arrow_back_ios,
          color: AppColors.primaryColor, size: 18),
    );
  }
}
