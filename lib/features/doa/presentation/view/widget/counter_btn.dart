import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/format_verse_number.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/show_success_pop_up.dart';

class CounterBtn extends StatelessWidget {
  const CounterBtn({
    super.key,
    required this.doaaCubit,
    required this.doa,
  });

  final DoaBloc doaaCubit;
  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.translate(
        offset: const Offset(0, -12),
        child: GestureDetector(
          onTap: () => doaaCubit.counterClick(doa, context),
          child: CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 28,
            child: Text(
              formatVerseNumber(int.parse(
                  ((doa.verses![doaaCubit.currentVerseIndex].count! -
                          doaaCubit.currentCountIndex))
                      .toString())),
              style: Styles.bold20
                  .copyWith(color: const Color.fromARGB(255, 245, 233, 221)),
            ),
          ),
        ),
      ),
    );
  }
}
