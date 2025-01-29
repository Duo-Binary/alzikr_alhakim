import 'package:alzikr_alhakim/core/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/sura/sura_bloc.dart';
import 'alert_dialog_text_button.dart';

class AlertDialogButtons extends StatelessWidget {
  const AlertDialogButtons({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AlertDialogTextButton(text: "لا"),
          const VerticalDivider(width: 0),
          AlertDialogTextButton(
              text: "نعم",
              onPressed: () async {
                Navigation.pop(context);
                context.read<SuraBloc>().add(SaveMarkEvent(index: index));
              })
        ],
      ),
    );
  }
}
