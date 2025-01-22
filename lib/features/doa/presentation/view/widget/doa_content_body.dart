import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_arrow_and_header_and_doa_text_section.dart';
import 'package:flutter/material.dart';

class DoaContentBody extends StatelessWidget {
  const DoaContentBody({super.key, required this.doa});
  final DoaModel doa;
  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DoaArrowAndHeaderAndDoaTextSection(doa: doa),
    );
  }
}
