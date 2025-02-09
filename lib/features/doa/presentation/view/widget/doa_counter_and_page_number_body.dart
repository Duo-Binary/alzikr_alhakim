import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/counter_arrow_and_text.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/counter_btn.dart';
import 'package:flutter/material.dart';

class DoaCounterAndPageNumberBody extends StatelessWidget {
  const DoaCounterAndPageNumberBody({
    super.key,
    required this.doaaCubit,
    required this.doa,
  });

  final DoaBloc doaaCubit;
  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CounterArrowAndText(doaaCubit: doaaCubit, doa: doa),
        CounterBtn(doaaCubit: doaaCubit, doa: doa),
      ],
    );
  }
}
