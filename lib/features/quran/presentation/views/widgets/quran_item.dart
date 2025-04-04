import 'package:alzikr_alhakim/core/utils/navigation.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/format_verse_number.dart';
import '../../../data/models/quran_model.dart';
import '../sura_view.dart';
import 'list_tile_leading.dart';

class QuranItem extends StatelessWidget {
  const QuranItem({super.key, required this.quran, required this.index});

  final QuranModel quran;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (int.parse(quran.id) == 1) const CustomDivider(thickness: .5),
        ListTile(
          horizontalTitleGap: 20,
          onTap: () => Navigation.push(context, SuraView(index: index)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          leading: ListTileLeading(suraNumber: quran.id.toString()),
          title: Text(quran.name, style: Styles.semiBold18),
          subtitle: Text(
              "${quran.type}   • ${formatVerseNumber(int.parse(quran.verses.toString()))} ايات",
              style: Styles.light12),
          trailing: Text(quran.englishName, style: Styles.bold18),
        ),
        const CustomDivider(),
      ],
    );
  }
}
