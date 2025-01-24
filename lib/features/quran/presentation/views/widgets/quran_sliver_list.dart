import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart';

import '../../manager/quran/quran_cubit.dart';
import 'quran_item.dart';

class QuranSliverList extends StatelessWidget {
  const QuranSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    final quran = context.read<QuranCubit>();
    return BlocBuilder<QuranCubit, QuranState>(
      builder: (context, state) {
        return SliverList.builder(
            itemCount: quran.searchList.isEmpty ? 114 : quran.searchList.length,
            itemBuilder: (context, index) {
              final list = quran.searchList.isEmpty
                  ? quran.quranList[index]
                  : quran.searchList[index];

              return QuranItem(quran: list, index: getPageNumber(list.id!, 1));
            });
      },
    );
  }
}
