import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoaaView extends StatelessWidget {
  const DoaaView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoaBloc(),
      child: const Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Directionality(
                textDirection: TextDirection.rtl, child: DoaViewBody()),
          )),
    );
  }
}
