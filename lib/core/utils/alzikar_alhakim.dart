import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/quran/presentation/views/quran_view.dart';

class AlzikrAlhakim extends StatelessWidget {
  const AlzikrAlhakim({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الذكر الحكيم',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const QuranView(),
    );
  }
}
