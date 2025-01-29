import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

import 'save_and_go_mark_item.dart';
import 'sura_alert_dialog_widget.dart';

class SuraSaveAndGoMarkWidget extends StatelessWidget {
  const SuraSaveAndGoMarkWidget({super.key, required this.onTap});
  final Function() onTap;

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
                onTap: () => showDialog(
                    context: context,
                    builder: (context) => SuraAlertDialogWidget())),
            SaveAndGoMarkItem(text: "انتقل الي العلامة", onTap: onTap)
          ],
        ),
      ),
    );
  }
}
