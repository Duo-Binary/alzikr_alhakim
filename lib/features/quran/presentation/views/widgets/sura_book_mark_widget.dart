import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuraBookMarkWidget extends StatelessWidget {
  const SuraBookMarkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0.0,
        left: 20.h,
        child: CustomSvg(
            height: 55,
            image: Assets.imagesSuraMark,
            color: AppColors.primaryColor.withValues(alpha: .8)));
  }
}
