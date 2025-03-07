import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../manager/sura/sura_cubit.dart';
import 'save_and_go_mark_item.dart';

class SuraSaveAndGoMarkWidget extends StatelessWidget {
  const SuraSaveAndGoMarkWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final sura = context.read<SuraCubit>();
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.blackColor.withValues(alpha: .85)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SaveAndGoMarkItem(
                text: "حفظ علامة",
                onTap: () {
                  sura.suraScroll();
                  sura.saveMark(index);
                }),
            SaveAndGoMarkItem(
                text: "انتقل الي العلامة",
                onTap: () {
                  if (sura.index != null) {
                    sura.pageController.jumpToPage(sura.index! - 1);
                    sura.suraScroll();
                  }
                })
          ],
        ),
      ),
    );
  }
}
