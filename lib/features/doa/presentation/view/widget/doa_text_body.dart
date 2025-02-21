import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:flutter/material.dart';

class DoaTextBody extends StatelessWidget {
  const DoaTextBody({
    super.key,
    required this.doa,
    required this.doaaCubit,
  });

  final DoaModel doa;
  final DoaBloc doaaCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
          child: Text(
            "${doa.verses![doaaCubit.currentVerseIndex].text}",
            textAlign: TextAlign.justify,
            style: Styles.doaaContent26,
          ),
        ),
      ),
    );
  }
}
