import 'package:flutter/material.dart';

import 'quran_view_header.dart';

class QuranViewBody extends StatelessWidget {
  const QuranViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(height: 24),
          QuranViewHeader(),
        ],
      ),
    );
  }
}
