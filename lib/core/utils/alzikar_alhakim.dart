import 'package:alzikr_alhakim/core/utils/cache_images.dart';
import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/features/home/data/repo/home_repo_impl.dart';
import 'package:alzikr_alhakim/features/home/presentation/manager/home/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/doa/presentation/manager/doa/doa_bloc.dart';
import '../../features/home/presentation/views/home_view.dart';

class AlzikrAlhakim extends StatelessWidget {
  const AlzikrAlhakim({super.key});

  @override
  Widget build(BuildContext context) {
    CacheImages.loadImages(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DoaBloc()),
        BlocProvider(
            create: (context) =>
                HomeCubit(HomeRepoImpl())..checkNewAppVersion()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(392.72727272727275, 800.7272727272727),
        child: MaterialApp(
          title: 'الذكر الحكيم',
          color: AppColors.primaryColor,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "poppins"),
          home: const HomeView(),
        ),
      ),
    );
  }
}
