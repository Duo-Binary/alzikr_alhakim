import 'package:alzikr_alhakim/widgets/sura_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart';

import 'no_quran_widget.dart';
import 'sura_basmallah_widget.dart';
import 'sura_view_header.dart';

class SuraViewBody2 extends StatefulWidget {
  const SuraViewBody2({super.key, required this.index});

  final int index;

  @override
  State<SuraViewBody2> createState() => _SuraViewBody2State();
}

class _SuraViewBody2State extends State<SuraViewBody2> {
  late PageController pageController;

  // List<GlobalKey> richTextKeys = List.generate(
  //   604,
  //   (_) => GlobalKey(),
  // );
  @override
  void initState() {
    pageController = PageController(initialPage: widget.index);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return PageView.builder(
        controller: pageController,
        itemCount: totalPagesCount + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return NoQuranWidget();
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                const SizedBox(height: 10),
                SuraViewHeader(index: index),
                if ((index == 1 || index == 2))
                  SizedBox(height: (size.height * .15)),
                const SizedBox(height: 10),
                RichText(
                  textAlign: (index == 1 || index == 2 || index > 570)
                      ? TextAlign.center
                      : TextAlign.center,
                  softWrap: true,
                  locale: const Locale("ar"),
                  text: TextSpan(
                      children: getPageData(index).expand((e) {
                    List<InlineSpan> children = [];
                    for (var i = e['start']; i <= e['end']; i++) {
                      if (i == 1) {
                        children.add(WidgetSpan(child: SuraHeaderWidget(e: e)));
                        if (index != 187 && index != 1) {
                          children.add(WidgetSpan(
                            child: SuraBasmallahWidget(),
                          ));
                        }
                      }
                    }
                    return children;
                  }).toList()),
                )
              ],
            ),
          );
        });
  }
}
