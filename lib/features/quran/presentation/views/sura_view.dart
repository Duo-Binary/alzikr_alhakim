import 'package:alzikr_alhakim/features/quran/presentation/manager/sura/sura_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import 'widgets/sura_view_body.dart';

class SuraView extends StatelessWidget {
  const SuraView({super.key, this.index = 1});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuraCubit()..initPageController(index - 1),
      child: CustomScaffold(child: SuraViewBody(index: index)),
    );
  }
}
