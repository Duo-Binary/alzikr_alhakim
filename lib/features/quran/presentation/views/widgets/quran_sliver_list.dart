import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/quran_item_model.dart';
import '../../manager/quran/quran_bloc.dart';
import 'quran_item.dart';

class QuranSliverList extends StatelessWidget {
  const QuranSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    final quran = context.read<QuranBloc>();
    return BlocBuilder<QuranBloc, QuranState>(
      builder: (context, state) {
        return SliverList.builder(
            itemCount: quran.searchList.isEmpty ? 114 : quran.searchList.length,
            itemBuilder: (context, index) {
              final list = quran.searchList.isEmpty
                  ? quran.quranList[index]
                  : quran.searchList[index];

              return QuranItem(
                quranItem: QuranItemModel(
                    suraNumber: list.id.toString(),
                    arName: list.name!,
                    enName: list.transliteration!,
                    type: list.type!,
                    verseCount: list.totalVerses.toString(),
                    index: index),
              );
            });
      },
    );
  }
}
