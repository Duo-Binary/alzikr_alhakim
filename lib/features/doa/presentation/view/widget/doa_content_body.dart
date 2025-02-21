import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/doa_model.dart';
import '../../manager/doa/doa_bloc.dart';
import '../../manager/doa/doa_state.dart';
import 'doa_counter_and_page_number_body.dart';
import 'doa_header_body.dart';
import 'doa_text_body.dart';

class DoaContentBody extends StatelessWidget {
  const DoaContentBody({super.key, required this.doa});
  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    var doaaCubit = context.read<DoaBloc>();

    return BlocBuilder<DoaBloc, DoaState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            DoaHeaderBody(doaaCubit: doaaCubit, doa: doa),
            // const SizedBox(height: 10),
            DoaTextBody(doa: doa, doaaCubit: doaaCubit),
            // const SizedBox(height: 30),
            DoaCounterAndPageNumberBody(doaaCubit: doaaCubit, doa: doa),
            const SizedBox(height: 4),
          ],
        );
      },
    );
  }
}
