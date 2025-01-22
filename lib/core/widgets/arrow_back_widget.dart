import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_cubit.dart';
import 'package:flutter/material.dart';

import '../utils/navigation.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({super.key, this.doaCubit});
  final DoaCubit? doaCubit;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (doaCubit != null) {
          doaCubit!.currentCountIndex = 0;
          doaCubit!.currentVerseIndex = 0;
        }
        Navigation.pop(context);
      },
      child: const Icon(Icons.arrow_back_ios,
          color: AppColors.primaryColor, size: 18),
    );
  }
}
