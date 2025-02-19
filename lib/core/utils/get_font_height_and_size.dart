import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'check_view_index.dart';
import 'constants/quran_data.dart';

double getFontHeight(Size size, int index) {
  return checkViewIndex(index, QuranData.font2h) != null
      ? 2.h
      : checkViewIndex(index, QuranData.font166h) != null
          ? size.width <= 370
              ? 2.03.h
              : size.width <= 420 && size.width > 370
                  ? checkViewIndex(index, QuranData.font175h) != null
                      ? 1.75.h
                      : 1.74.h
                  : 1.66.h
          : checkViewIndex(index, QuranData.font183h) != null
              ? size.width <= 370
                  ? index == 201 || index == 569
                      ? 2.25.h
                      : 2.2.h
                  : size.width <= 420 && size.width > 370
                      ? index == 600
                          ? 1.9.h
                          : 1.93.h
                      : 1.83.h
              : checkViewIndex(index, QuranData.font193h) != null
                  ? size.width <= 370
                      ? 2.35.h
                      : size.width <= 420 && size.width > 370
                          ? 2.05.h
                          : 1.93.h
                  : index == 208
                      ? size.width <= 370
                          ? 2.05.h
                          : size.width <= 420 && size.width > 370
                              ? 1.745.h
                              : 1.68.h
                      : size.width <= 370
                          ? index == 34
                              ? 2.25.h
                              : index == 578
                                  ? 2.03.h
                                  : index >= 595
                                      ? 2.15.h
                                      : index == 576
                                          ? 2.22.h
                                          : 2.2.h
                          : index == 34 || index == 50
                              ? size.width <= 420 && size.width > 370
                                  ? 1.9.h
                                  : 1.83.h
                              : index == 187
                                  ? size.width <= 420 && size.width > 370
                                      ? 1.87.h
                                      : 1.77.h
                                  : size.width <= 420 && size.width > 370
                                      ? checkViewIndex(
                                                  index, QuranData.font185h) !=
                                              null
                                          ? 1.85.h
                                          : index >= 601
                                              ? 1.8.h
                                              : 1.9.h
                                      : 1.8.h;
}

double getFontSize(Size size, int index) {
  return checkViewIndex(index, QuranData.font2h) != null
      ? 28.sp
      : index == 34 && size.width <= 370
          ? 22.5.sp
          : checkViewIndex(index, QuranData.font183h) != null
              ? checkViewIndex(index, QuranData.font225s) != null
                  ? 22.5.sp
                  : 22.75.sp
              : checkViewIndex(index, QuranData.font23s) != null
                  ? 23.sp
                  : (index == 590 || index == 595) && size.width <= 370
                      ? 23.sp
                      : 23.1.sp;
}
