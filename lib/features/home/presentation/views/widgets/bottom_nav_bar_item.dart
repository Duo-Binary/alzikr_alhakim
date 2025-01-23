import 'package:flutter/material.dart';

import '../../../data/models/bottom_nav_model.dart';

BottomNavigationBarItem bottomNavBarItem(BottomNavModel bottomNavModel) {
  return BottomNavigationBarItem(
      icon: Padding(
          padding: const EdgeInsets.only(top: 12),
          child:
              Image.asset(bottomNavModel.image, color: bottomNavModel.color)),
      label: "");
}
