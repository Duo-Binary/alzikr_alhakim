import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_cubit.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/doa_view.dart';
import 'package:alzikr_alhakim/features/quran/presentation/views/quran_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/navigation.dart';
import '../../quran/presentation/manager/quran/quran_cubit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    _navigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  void _navigation() async {
    await context.read<DoaCubit>().readJson();
    // ignore: use_build_context_synchronously
    Navigation.go(context, const DoaaView());
  }
}
