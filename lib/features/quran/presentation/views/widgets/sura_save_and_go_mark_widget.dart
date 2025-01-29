import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/features/quran/presentation/manager/sura/sura_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'save_and_go_mark_item.dart';
import 'sura_alert_dialog_widget.dart';

class SuraSaveAndGoMarkWidget extends StatelessWidget {
  const SuraSaveAndGoMarkWidget(
      {super.key, required this.onTap, required this.index});
  final Function() onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration:
          BoxDecoration(color: AppColors.blackColor.withValues(alpha: .9)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SaveAndGoMarkItem(
                text: "حفظ علامة",
                onTap: () {
                  context.read<SuraCubit>().suraScroll();
                  showDialog(
                      context: context,
                      builder: (context) =>
                          SuraAlertDialogWidget(index: index));
                }),
            SaveAndGoMarkItem(text: "انتقل الي العلامة", onTap: onTap)
          ],
        ),
      ),
    );
  }
}
