import 'package:flutter/material.dart';

import 'alert_dialog_text_button.dart';

class AlertDialogContent extends StatelessWidget {
  const AlertDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(height: 0),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AlertDialogTextButton(text: "لا"),
              const VerticalDivider(width: 0),
              AlertDialogTextButton(text: "نعم", onPressed: () {})
            ],
          ),
        )
      ],
    );
  }
}
