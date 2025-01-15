import 'package:alzikr_alhakim/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/quran_item_model.dart';
import '../../manager/build_quran/build_quran_bloc.dart';
import 'quran_item.dart';

class QuranSliverList extends StatelessWidget {
  const QuranSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    final buildQuran = context.read<BuildQuranBloc>();
    return BlocBuilder<BuildQuranBloc, BuildQuranState>(
      builder: (context, state) {
        return SliverList.builder(
            itemCount:
                buildQuran.suraList.isEmpty ? 114 : buildQuran.suraList.length,
            itemBuilder: (context, index) {
              final list = buildQuran.suraList.isEmpty
                  ? Constants.arabicName[index]
                  : buildQuran.suraList[index];

              return QuranItem(
                quranItem: QuranItemModel(
                    suraNumber: list['surah'],
                    arName: list['name'],
                    enName: list['englishName'],
                    type: list['type'],
                    verseCount: list['verses'].toString(),
                    index: index),
              );
            });
      },
    );
  }
}
