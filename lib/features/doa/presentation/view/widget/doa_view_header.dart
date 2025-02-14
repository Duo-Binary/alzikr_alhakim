import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

class DoaViewHeader extends StatelessWidget {
  const DoaViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Image.asset(
        Assets.imagesDoaaHeader,
      ),
    );
  }
}