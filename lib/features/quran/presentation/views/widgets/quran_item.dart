import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/format_verse_number.dart';
import '../../../data/models/quran_item_model.dart';
import 'list_tile_leading.dart';

class QuranItem extends StatelessWidget {
  const QuranItem({super.key, required this.quranItem});

  final QuranItemModel quranItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (quranItem.index != null && quranItem.index == 0) const Divider(),
        Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            horizontalTitleGap: 20,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: ListTileLeading(suraNumber: quranItem.suraNumber),
            title: Text(quranItem.arName, style: Styles.semiBold18),
            subtitle: Text(
                "${quranItem.type}   • ${formatVerseNumber(int.parse(quranItem.verseCount))} ايات",
                style: Styles.light12),
            trailing: Text(quranItem.enName, style: Styles.bold18),
          ),
        ),
        const Divider(thickness: 2),
      ],
    );
  }
}
