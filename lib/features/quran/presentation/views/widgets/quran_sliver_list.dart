import 'package:alzikr_alhakim/core/utils/constants.dart';
import 'package:alzikr_alhakim/features/quran/data/models/quran_item_model.dart';
import 'package:flutter/material.dart';

import 'quran_item.dart';

class QuranSliverList extends StatelessWidget {
  const QuranSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 114,
        itemBuilder: (context, index) {
          final list = Constants.arabicName[index];
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
  }
}
