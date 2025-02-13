import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/format_verse_number.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:flutter/material.dart';

class CounterBtnSwapForward extends StatelessWidget {
  const CounterBtnSwapForward({
    super.key,
    required this.doaaCubit,
    required this.doa,
  });

  final DoaBloc doaaCubit;
  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          doaaCubit.swapToNextVerseBackward(length: doa.verses!.length),
      child: Row(
        spacing: 6,
        children: [
          Text(
            formatVerseNumber(
                int.parse((doaaCubit.currentVerseIndex + 1).toString())),
            style: Styles.counterTextStyle20
          ,
          ),
          const Icon(
            Icons.arrow_back_ios,
            color: AppColors.primaryColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
