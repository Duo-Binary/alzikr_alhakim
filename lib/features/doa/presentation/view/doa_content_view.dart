import 'package:alzikr_alhakim/core/widgets/custom_scaffold.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_content_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/doa/doa_bloc.dart';

class DoaContentView extends StatelessWidget {
  const DoaContentView({super.key, required this.doa});
  final DoaModel doa;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: PopScope(
            onPopInvoked: (didPop) {
              context.read<DoaBloc>().currentCountIndex = 0;
              context.read<DoaBloc>().currentVerseIndex = 0;
            },
            child: DoaContentBody(doa: doa)));
  }
}
