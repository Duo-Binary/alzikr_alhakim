import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_cubit.dart';
import 'package:flutter/material.dart';

class DoaTextBody extends StatelessWidget {
  const DoaTextBody({
    super.key,
    required this.doa,
    required this.doaaCubit,
  });

  final DoaModel doa;
  final DoaCubit doaaCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 233, 221),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.primaryColor, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Text(
              "${doa.verses![doaaCubit.currentVerseIndex].text}",
              style: Styles.doaaContent20,
            ),
          ),
        ),
      ),
    );
  }
}
