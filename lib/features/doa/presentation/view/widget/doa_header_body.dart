import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/core/widgets/arrow_back_widget.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:flutter/material.dart';

class DoaHeaderBody extends StatelessWidget {
  const DoaHeaderBody({
    super.key,
    required this.doaaCubit,
    required this.doa,
  });

  final DoaBloc doaaCubit;
  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ArrowBackWidget(
            doaCubit: doaaCubit,
          ),
          Expanded(
            child: Text(
              doa.category!,
              textAlign: TextAlign.center,
              style: Styles.doaaHeader30.copyWith(fontSize: 18),
            ),
          ),
          SizedBox(
            width: 0,
          ),
        ],
      ),
    );
  }
}
