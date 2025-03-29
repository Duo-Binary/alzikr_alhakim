import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/home/home_cubit.dart';
import 'widgets/bottom_nav_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final home = context.read<HomeCubit>();

    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: home.views[home.activeIndex],
          bottomNavigationBar: Directionality(
            textDirection: TextDirection.rtl,
            child: BottomNavBarWidget(
              activeIndex: home.activeIndex,
              onTap: (index) {
                if (home.activeIndex != index) {
                  home.changeIndex(index);
                }
              },
            ),
          ),
        );
      },
    );
  }
}
