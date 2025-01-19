import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/format_verse_number.dart';
import '../../../data/models/quran_model.dart';
import 'sura_divider.dart';

class SuraHeaderInfo extends StatelessWidget {
  const SuraHeaderInfo({super.key, required this.quran});

  final QuranModel quran;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: quran.id == 1 || quran.id == 9 ? null : 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesBackgroundHeader,
            )),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Text(quran.name!, style: Styles.bold20),
          Text(quran.transliteration!, style: Styles.medium15),
          const SuraDivider(),
          Text(
              "${quran.type}   • ${formatVerseNumber(int.parse(quran.totalVerses!.toString()))} ايات",
              style: Styles.medium15.copyWith(fontWeight: FontWeight.bold)),
          if (quran.id != 1 && quran.id != 9) const SizedBox(height: 16),
          if (quran.id != 1 && quran.id != 9)
            Image.asset(
              Assets.imagesBasmallah,
              height: 50,
            ),
          if (quran.id == 1 || quran.id == 9) const SizedBox(height: 20),
        ],
      ),
    );
  }
}
