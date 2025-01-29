import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/sura/sura_cubit.dart';
import 'alert_dialog_buttons.dart';
import 'alert_dialog_snack_bar.dart';

class AlertDialogContent extends StatelessWidget {
  const AlertDialogContent({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SuraCubit, SuraState>(
      listener: (context, state) {
        if (state is SaveMarkState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(alertDialogSnackbar(context));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(height: 0),
          AlertDialogButtons(index: index),
        ],
      ),
    );
  }
}
