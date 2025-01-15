import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/build_quran/build_quran_bloc.dart';
import 'widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BuildQuranBloc(),
      child: const Scaffold(
        body: QuranViewBody(),
      ),
    );
  }
}
