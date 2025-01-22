import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_content_body.dart';
import 'package:flutter/material.dart';

class DoaContentView extends StatelessWidget {
  const DoaContentView({super.key, required this.doa});
 final DoaModel doa;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: DoaContentBody(doa: doa))),
    );
  }
}
