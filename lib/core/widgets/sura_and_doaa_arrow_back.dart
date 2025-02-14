import 'package:flutter/material.dart';

import '../../features/doa/presentation/manager/doa/doa_bloc.dart';
import '../utils/styles.dart';
import 'arrow_back_widget.dart';

class SuraAndDoaaArrowBack extends StatelessWidget {
  const SuraAndDoaaArrowBack({super.key, required this.text, this.doaCubit});

  final String text;
  final DoaBloc? doaCubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ArrowBackWidget(doaCubit: doaCubit),
        Text(text, style: Styles.bold14),
      ],
    );
  }
}
