import 'package:alzikr_alhakim/features/doa/data/repo/doa_repo_impl.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/quran/data/repo/quran_repo_impl.dart';
import '../../features/quran/presentation/manager/quran/quran_cubit.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class AlzikrAlhakim extends StatelessWidget {
  const AlzikrAlhakim({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => QuranCubit(QuranRepoImpl())),
        BlocProvider(create: (context) => DoaCubit(DoaRepoImpl())),
      ],
      child: ScreenUtilInit(
        designSize: const Size(392.72727272727275, 800.7272727272727),
        child: MaterialApp(
          title: 'الذكر الحكيم',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          home: const SplashView(),
        ),
      ),
    );
  }
}
