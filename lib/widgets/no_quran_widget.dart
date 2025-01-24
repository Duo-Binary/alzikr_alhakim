import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

class NoQuranWidget extends StatelessWidget {
  const NoQuranWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesNoQuran, fit: BoxFit.fill);
  }
}