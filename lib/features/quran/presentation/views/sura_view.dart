import 'package:alzikr_alhakim/core/widgets/custom_backgrond_container.dart';
import 'package:flutter/material.dart';

import 'widgets/sura_view_body.dart';

class SuraView extends StatelessWidget {
  const SuraView({super.key, this.index = 0});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomBackgroundContainer(child: SuraViewBody(index: index)),
    );
  }
}
