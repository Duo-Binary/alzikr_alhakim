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
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Center(
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SaveAndGoMarkItem(
                text: "حفظ علامة",
                onTap: () {
                  sura.suraScroll();
                  sura.saveMark(index);
                }),
            const SizedBox(width: 10),
            SaveAndGoMarkItem(
                text: "انتقل الي العلامة",
                onTap: () {
                  if (sura.index != null && sura.index! > 0) {
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
