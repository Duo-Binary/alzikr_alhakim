import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_state.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_counter_and_page_number_body.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_header_body.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_text_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoaArrowAndHeaderAndDoaTextSection extends StatelessWidget {
  const DoaArrowAndHeaderAndDoaTextSection({super.key, required this.doa});
  final DoaModel doa;
  @override
  Widget build(BuildContext context) {
    var doaaCubit = context.read<DoaBloc>();

    return BlocBuilder<DoaBloc, DoaState>(
      builder: (context, state) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoaHeaderBody(doaaCubit: doaaCubit, doa: doa),
              DoaTextBody(doa: doa, doaaCubit: doaaCubit),
              const SizedBox(height: 30),
              DoaCounterAndPageNumberBody(doaaCubit: doaaCubit, doa: doa),
              const SizedBox(height: 4),
            ],
          ),
        );
      },
    );
  }
}
