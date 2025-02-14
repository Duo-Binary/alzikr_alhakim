import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/custom_backgrond_container.dart';
import '../manager/quran/quran_bloc.dart';
import 'widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranBloc(),
      child: const Scaffold(
          backgroundColor: AppColors.blackColor,
          body: CustomBackgroundContainer(child: QuranViewBody())),
    );
  }
}
