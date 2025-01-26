import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'check_view_index.dart';
import 'constants.dart';

double getFontHeight(int index) {
  return checkViewIndex(index, Constants.font2h) != null
      ? 2.h
      : checkViewIndex(index, Constants.font158h) != null
          ? 1.58.h
          : checkViewIndex(index, Constants.font175h) != null
              ? 1.75.h
              : checkViewIndex(index, Constants.font183h) != null
                  ? 1.83.h
                  : index == 208
                      ? 1.65.h
                      : 1.7.h;
}

double getFontSize(int index) {
  return checkViewIndex(index, Constants.font2h) != null
      ? 28.sp
      : checkViewIndex(index, Constants.font175h) != null
          ? checkViewIndex(index, Constants.font225s) != null
              ? 22.5.sp
              : 22.75.sp
          : checkViewIndex(index, Constants.font23s) != null
              ? 23.sp
              : 23.1.sp;
}
