import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/doa/presentation/manager/doa/doa_bloc.dart';
import '../../features/home/presentation/manager/home/home_cubit.dart';
import '../../features/home/presentation/views/home_view.dart';

class AlzikrAlhakim extends StatelessWidget {
  const AlzikrAlhakim({super.key, required this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DoaBloc()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(392.72727272727275, 800.7272727272727),
        child: MaterialApp(
          title: 'الذكر الحكيم',
          navigatorKey: navigatorKey,
          color: AppColors.primaryColor,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "poppins"),
          home: const HomeView(),
        ),
      ),
    );
  }
}
