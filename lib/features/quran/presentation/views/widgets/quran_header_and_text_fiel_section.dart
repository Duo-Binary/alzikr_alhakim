import 'package:flutter/material.dart';

import 'quran_text_field.dart';
import 'quran_view_header.dart';

class QuranHeaderAndTextFieldSection extends StatelessWidget {
  const QuranHeaderAndTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 24),
        QuranViewHeader(),
        SizedBox(height: 24),
        QuranTextField(),
        SizedBox(height: 24),
      ],
    );
  }
}