import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle bold30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle regular15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle extraLight12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w200,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle light12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle semiBold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.blackColor,
  );

  static TextStyle medium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: const Color(0xff240F4F),
  );

  static TextStyle bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.primaryColor,
  );

  static TextStyle bold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle medium15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.whiteColor,
  );

  static TextStyle quran22 = const TextStyle(
      color: Colors.black,
      fontSize: 22,
      fontFamily: "uthmanic_hafs",
      fontWeight: FontWeight.w600,
      height: 2,
      wordSpacing: .5);

  static TextStyle ayat20 = TextStyle(
      color: AppColors.primaryColor.withValues(alpha: .65), fontSize: 20);

  static TextStyle doaaHeader30 = const TextStyle(
      color: AppColors.blackColor,
      fontSize: 30,
      fontWeight: FontWeight.w600,
      height: 1.5);

  static TextStyle doaaContent20 = TextStyle(
      color: AppColors.primaryColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      wordSpacing: 4,
      height: 1.5);

  static TextStyle bold14 = TextStyle(
    fontSize: 14.sp,
    fontFamily: "taha",
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle suraHeader = TextStyle(
      fontSize: 14.sp,
      fontFamily: GoogleFonts.arima().fontFamily,
      color: Colors.white);

  static TextStyle reqular5 =
      TextStyle(fontSize: 5.sp, fontFamily: "uthmanic_hafs");
  static TextStyle reqular24 =
      TextStyle(fontFamily: "arsura", fontSize: 24.sp, color: Colors.black);

  static TextStyle quranText(int index) {
    return TextStyle(
      fontFamily: "QCF_P${index.toString().padLeft(3, "0")}",
      height: index == 1 || index == 2
          ? 2.h
          : index == 76
              ? 1.83.h
              : index == 77 ||
                      index == 367 ||
                      index == 377 ||
                      index == 415 ||
                      index == 418 ||
                      index == 446 ||
                      index == 453 ||
                      index == 499 ||
                      index == 507 ||
                      index == 526 ||
                      index == 549 ||
                      index == 556 ||
                      index == 558 ||
                      index == 585
                  ? 1.58.h
                  : index == 145 || index == 201 || index == 569
                      ? 1.75.h
                      : index == 207 ||
                              index == 331 ||
                              index == 341 ||
                              index == 349 ||
                              index == 366 ||
                              index == 376 ||
                              index == 414 ||
                              index == 417 ||
                              index == 445 ||
                              index == 452 ||
                              index == 498 ||
                              index == 506 ||
                              index == 525 ||
                              index == 548 ||
                              index == 555 ||
                              index == 557 ||
                              index == 584
                          ? 1.83.h
                          : index == 208 ||
                                  index == 332 ||
                                  index == 342 ||
                                  index == 350 ||
                                  index == 568
                              ? 1.65.h
                              : 1.7.h,
      letterSpacing: 0.w,
      wordSpacing: 0,
      color: Colors.black,
      fontSize: index == 1 || index == 2
          ? 28.sp
          : index == 145 ||
                  index == 201 ||
                  index == 569 ||
                  index == 575 ||
                  index == 600
              ? index == 532 || index == 533
                  ? 22.5.sp
                  : 22.75.sp
              : index == 50 || index == 34 || index == 180
                  ? 23.sp
                  : 23.1.sp,
      backgroundColor: Colors.transparent,
    );
  }
}
