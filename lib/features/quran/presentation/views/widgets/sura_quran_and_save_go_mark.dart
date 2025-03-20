import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/sura/sura_cubit.dart';
import 'sura_book_mark_widget.dart';
import 'sura_quran_found.dart';
import 'sura_save_and_go_mark_widget.dart';

class SuraQuranAndSaveGoMark extends StatelessWidget {
  const SuraQuranAndSaveGoMark({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final sura = context.read<SuraCubit>();

    return BlocBuilder<SuraCubit, SuraState>(
      builder: (context, state) {
        return GestureDetector(
            onTap: () {
              sura.suraClick();
            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SuraQuranFound(index: index),
                if (sura.isSuraClicked) SuraSaveAndGoMarkWidget(index: index),
                if (sura.index == index) const SuraBookMarkWidget()
              ],
            ));
      },
    );
  }
}
