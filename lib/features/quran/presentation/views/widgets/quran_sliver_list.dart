import 'package:alzikr_alhakim/core/utils/constants/quran_data.dart';
import 'package:alzikr_alhakim/features/quran/data/models/quran_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart';

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
                  ? QuranData.arabicName[index]
                  : quran.searchList[index];

              return QuranItem(
                  quran: QuranModel.fromJson(list),
                  index: getPageNumber(int.parse(list['id']), 1));
            });
      },
    );
  }
}
