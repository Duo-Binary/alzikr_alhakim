import 'dart:developer';

import 'package:alzikr_alhakim/core/service/shared_pref_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/sura/sura_bloc.dart';
import 'sura_book_mark_widget.dart';
import 'sura_quran_found.dart';
import 'sura_save_and_go_mark_widget.dart';

class SuraQuranAndSaveGoMark extends StatelessWidget {
  const SuraQuranAndSaveGoMark(
      {super.key, required this.index, required this.onTap});
  final int index;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final sura = context.read<SuraBloc>();
    return BlocBuilder<SuraBloc, SuraState>(
      builder: (context, state) {
        return GestureDetector(
            onTap: () {
              sura.add(SuraClickEvent());
            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SuraQuranFound(index: index),
                if (sura.isSuraClicked)
                  SuraSaveAndGoMarkWidget(index: index, onTap: onTap),
                if (SharedPrefService().getInt() == index)
                  const SuraBookMarkWidget()
              ],
            ));
      },
    );
  }
}
