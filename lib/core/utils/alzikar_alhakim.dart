import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/quran/data/repo/quran_repo_impl.dart';
import '../../features/quran/presentation/manager/quran/quran_cubit.dart';
import '../../features/splash/presentation/splash_view.dart';

class AlzikrAlhakim extends StatelessWidget {
  const AlzikrAlhakim({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranCubit(QuranRepoImpl()),
      child: MaterialApp(
        title: 'الذكر الحكيم',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        home: const SplashView(),
      ),
    );
  }
}
