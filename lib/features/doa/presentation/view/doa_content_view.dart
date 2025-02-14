import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/widgets/custom_backgrond_container.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_content_body.dart';
import 'package:flutter/material.dart';

class DoaContentView extends StatelessWidget {
  const DoaContentView({super.key, required this.doa});
 final DoaModel doa;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: CustomBackgroundContainer(child: DoaContentBody(doa: doa)),
    );
  }
}
