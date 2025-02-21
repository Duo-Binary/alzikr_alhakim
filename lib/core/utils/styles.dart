import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'get_font_height_and_size.dart';

class Styles {
  static TextStyle bold30 = TextStyle(
    fontSize: _getResponsiveFontSize(30),
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle regular15 = TextStyle(
    fontSize: _getResponsiveFontSize(15),
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle regular14 = TextStyle(
    fontSize: _getResponsiveFontSize(14),
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle regular12 = TextStyle(
    fontSize: _getResponsiveFontSize(12),
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.secondaryColor,
  );

  static TextStyle light15 = TextStyle(
    fontSize: _getResponsiveFontSize(15),
    fontWeight: FontWeight.w300,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.primaryColor,
  );

  static TextStyle extraLight12 = TextStyle(
    fontSize: _getResponsiveFontSize(12),
    fontWeight: FontWeight.w200,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle light12 = TextStyle(
    fontSize: _getResponsiveFontSize(12),
    fontWeight: FontWeight.w300,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle semiBold18 = TextStyle(
    fontSize: _getResponsiveFontSize(18),
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle semiBold14 = TextStyle(
    fontSize: _getResponsiveFontSize(14),
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle semiBold16 = TextStyle(
    fontSize: _getResponsiveFontSize(16),
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle medium16 = TextStyle(
    fontSize: _getResponsiveFontSize(16),
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: const Color(0xff240F4F),
  );

  static TextStyle medium18 = TextStyle(
    fontSize: _getResponsiveFontSize(18),
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.primaryColor,
  );

  static TextStyle bold18 = TextStyle(
    fontSize: _getResponsiveFontSize(18),
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.primaryColor,
  );

  static TextStyle bold20 = TextStyle(
    fontSize: _getResponsiveFontSize(20),
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle light20 = TextStyle(
    fontSize: _getResponsiveFontSize(20),
    fontWeight: FontWeight.w300,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: Color(0xff1E1E1E).withValues(alpha: .5),
  );

  static TextStyle light16 = TextStyle(
    fontSize: _getResponsiveFontSize(16),
    fontWeight: FontWeight.w300,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: Color(0xff1E1E1E).withValues(alpha: .5),
  );

  static TextStyle tahaBold18 = TextStyle(
    fontSize: _getResponsiveFontSize(18),
    fontWeight: FontWeight.bold,
    fontFamily: "taha",
    color: Color(0xffF3F3F3),
  );

  static TextStyle medium15 = TextStyle(
    fontSize: _getResponsiveFontSize(15),
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle quran22 = TextStyle(
      color: Colors.black,
      fontSize: _getResponsiveFontSize(22),
      fontFamily: "uthmanic_hafs",
      fontWeight: FontWeight.w600,
      height: 2,
      wordSpacing: .5);

  static TextStyle ayat20 = TextStyle(
      color: AppColors.primaryColor.withValues(alpha: .65), fontSize: 20);

  static TextStyle doaaHeader30 = TextStyle(
    color: AppColors.blackColor,
    fontSize: _getResponsiveFontSize(30),
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  // static TextStyle doaaContent20 = TextStyle(
  //   color: AppColors.blackColor,
  //   fontFamily: GoogleFonts.poppins().fontFamily,
  //   fontSize: 22,
  //   fontWeight: FontWeight.w600,
  //   wordSpacing: 4,
  //   height: 1.5,
  // );
  static TextStyle doaaContent26 = TextStyle(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w600,
      wordSpacing: 4,
      fontFamily: "uthmanic_hafs",
      height: 1.8,
      fontSize: _getResponsiveFontSize(26));
  static TextStyle counterTextStyle16 = TextStyle(
    fontWeight: FontWeight.w600,
    wordSpacing: 4,
    fontFamily: GoogleFonts.poppins().fontFamily,
    height: 1.8,
    fontSize: _getResponsiveFontSize(16),
    color: AppColors.primaryColor,
  );
  static TextStyle bold14 = TextStyle(
    fontSize: _getResponsiveFontSize(14.sp),
    fontFamily: "taha",
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle suraHeader = TextStyle(
      fontSize: _getResponsiveFontSize(14.sp),
      fontFamily: GoogleFonts.arima().fontFamily,
      color: Colors.white);

  static TextStyle reqular5 = TextStyle(
      fontSize: _getResponsiveFontSize(5.sp), fontFamily: "uthmanic_hafs");
  static TextStyle reqular24 = TextStyle(
      fontFamily: "arsura",
      fontSize: _getResponsiveFontSize(24.sp),
      color: Colors.black);

  static TextStyle quranText(Size size, int index) {
    return TextStyle(
      fontFamily: "QCF_P${index.toString().padLeft(3, "0")}",
      height: getFontHeight(size, index),
      letterSpacing: 0.w,
      wordSpacing: 0,
      color: Colors.black,
      fontSize: getFontSize(size, index),
      backgroundColor: Colors.transparent,
    );
  }
}

double _getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var decivePixels = dispatcher.views.first.devicePixelRatio;

  var width = physicalWidth / decivePixels;
  return width / 550;
}

double _getResponsiveFontSize(double fontSize) {
  double scaleFactor = _getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
