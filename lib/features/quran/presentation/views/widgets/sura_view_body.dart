import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_library/quran_library.dart';

import '../../manager/sura/sura_cubit.dart';
import 'alert_dialog_snack_bar.dart';
import 'sura_book_mark_widget.dart';
import 'sura_save_and_go_mark_widget.dart';
import 'sura_view_header.dart';

class SuraViewBody extends StatelessWidget {
  const SuraViewBody({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final sura = context.read<SuraCubit>();

    return BlocConsumer<SuraCubit, SuraState>(
      listener: (content, state) {
        if (state is SaveMarkState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(alertDialogSnackbar(context));
        }
      },
      builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            QuranLibraryScreen(
              useDefaultAppBar: false,
              pageController: sura.pageController,
              backgroundColor: AppColors.whiteColor,
              header: SuraViewHeader(index: sura.page ?? index),
              onPageChanged: (index) {
                sura.getPage(index + 1);
              },
              onTap: (index) {
                sura.suraClick();
              },
            ),
            if (sura.isSuraClicked)
              SuraSaveAndGoMarkWidget(index: sura.page ?? index),
            if (sura.index == (sura.page ?? index)) const SuraBookMarkWidget()
          ],
        );
      },
    );
  }
}
