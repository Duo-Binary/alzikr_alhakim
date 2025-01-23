import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../data/models/bottom_nav_model.dart';
import 'bottom_nav_bar_item.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget(
      {super.key, required this.activeIndex, required this.onTap});

  final int activeIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: activeIndex,
      backgroundColor: AppColors.backgroundColor,
      onTap: onTap,
      items: [
        bottomNavBarItem(BottomNavModel(
            image: Assets.imagesQuranIcon,
            color: activeIndex == 0 ? AppColors.primaryColor : null)),
        bottomNavBarItem(BottomNavModel(
            image: Assets.imagesDoaaIcon,
            color: activeIndex == 1 ? AppColors.primaryColor : null)),
      ],
    );
  }
}
