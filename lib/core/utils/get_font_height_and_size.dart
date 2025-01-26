import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'check_view_index.dart';
import 'constants.dart';

double getFontHeight(Size size, int index) {
  return checkViewIndex(index, Constants.font2h) != null
      ? 2.h
      : checkViewIndex(index, Constants.font158h) != null
          ? size.width <= 370
              ? 2.03.h
              : 1.58.h
          : checkViewIndex(index, Constants.font175h) != null
              ? size.width <= 370
                  ? 2.2.h
                  : 1.75.h
              : checkViewIndex(index, Constants.font183h) != null
                  ? size.width <= 370
                      ? 2.35.h
                      : 1.83.h
                  : index == 208
                      ? size.width <= 370
                          ? 2.05.h
                          : 1.65.h
                      : size.width <= 370
                          ? index == 34
                              ? 2.25.h
                              : 2.2.h
                          : 1.7.h;
}

double getFontSize(Size size, int index) {
  return checkViewIndex(index, Constants.font2h) != null
      ? 28.sp
      : index == 34 && size.width <= 370
          ? 22.5.sp
          : checkViewIndex(index, Constants.font175h) != null
              ? checkViewIndex(index, Constants.font225s) != null
                  ? 22.5.sp
                  : 22.75.sp
              : checkViewIndex(index, Constants.font23s) != null
                  ? 23.sp
                  : 23.1.sp;
}
