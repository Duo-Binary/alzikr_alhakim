import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

class NoSuraWidget extends StatelessWidget {
  const NoSuraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesNoQuran, fit: BoxFit.cover);
  }
}
