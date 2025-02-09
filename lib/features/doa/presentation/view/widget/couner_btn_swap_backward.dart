import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/format_verse_number.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:flutter/material.dart';
class CounterBtnSwapBackward extends StatelessWidget {
  const CounterBtnSwapBackward({
    super.key,
    required this.doaaCubit,
    required this.doa,
  });
  final DoaBloc doaaCubit;
  final DoaModel doa;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => doaaCubit.swapToNextVerseForward(
          length: doa.verses!.length, doa: doa),
      child: Row(
        spacing: 6,
        children: [
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.primaryColor,
            size: 20,
          ),
          Text(
            formatVerseNumber(int.parse(doa.verses!.length.toString())),
            style: Styles.doaaContent20.copyWith(
              fontSize: 16,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
