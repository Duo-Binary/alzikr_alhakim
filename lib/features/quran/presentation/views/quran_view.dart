import 'package:flutter/material.dart';

import 'widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Color(0xffe8dfd0),
      body: QuranViewBody(),
    );
  }
}
