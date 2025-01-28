import 'package:alzikr_alhakim/core/utils/custom_svg.dart';
import 'package:flutter/material.dart';

import '../../../data/models/bottom_nav_model.dart';

BottomNavigationBarItem bottomNavBarItem(BottomNavModel bottomNavModel) {
  return BottomNavigationBarItem(
      icon: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: CustomSvg(
              image: bottomNavModel.image, color: bottomNavModel.color)),
      label: "");
}
