import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import 'widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: QuranViewBody(),
    );
  }
}
