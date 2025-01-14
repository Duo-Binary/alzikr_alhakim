import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

class QuranViewHeader extends StatelessWidget {
  const QuranViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Image.asset(
        Assets.imagesQuranHeader,
      ),
    );
  }
}
