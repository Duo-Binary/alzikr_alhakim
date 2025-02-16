import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: child,
        ),
      ),
    );
  }
}
