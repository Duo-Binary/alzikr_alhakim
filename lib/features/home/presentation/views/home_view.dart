import 'package:alzikr_alhakim/core/utils/service/notification_service.dart';
import 'package:flutter/material.dart';

import '../../../doa/presentation/view/doa_view.dart';
import '../../../prayer/presentation/views/prayer_view.dart';
import '../../../quran/presentation/views/quran_view.dart';
import 'widgets/bottom_nav_bar_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int activeIndex = 0;
  List views = const [
    PrayerView(),
    QuranView(),
    DoaaView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[activeIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
         await NotificationService().initNotifications();
        },
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavBarWidget(
          activeIndex: activeIndex,
          onTap: (index) {
            if (activeIndex != index) {
              activeIndex = index;
            }
            setState(() {});
          },
        ),
      ),
    );
  }
}
