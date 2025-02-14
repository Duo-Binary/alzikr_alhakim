import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/couner_btn_swap_backward.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/counter_btn_swap_forward.dart';
import 'package:flutter/material.dart';

class CounterArrowAndText extends StatelessWidget {
  const CounterArrowAndText({
    super.key,
    required this.doaaCubit,
    required this.doa,
  });
  final DoaBloc doaaCubit;
  final DoaModel doa;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CounterBtnSwapForward(doaaCubit: doaaCubit, doa: doa),
              CounterBtnSwapBackward(doaaCubit: doaaCubit, doa: doa),
            ],
          ),
        ),
      ),
    );
  }
}
