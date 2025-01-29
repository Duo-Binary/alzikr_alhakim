import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/sura/sura_bloc.dart';
import 'widgets/sura_view_body.dart';

class SuraView extends StatelessWidget {
  const SuraView({super.key, this.index = 0});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuraBloc()..add(GetMarkEvent()),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: SuraViewBody(index: index))),
      ),
    );
  }
}
