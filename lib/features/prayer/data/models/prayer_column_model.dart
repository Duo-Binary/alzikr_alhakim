import 'package:flutter/material.dart';

class PrayerColumnModel {
  final String text1, text2;
  final TextStyle? style1, style2;
  final double? size;

  PrayerColumnModel(
      {required this.text1,
      required this.text2,
      this.style1,
      this.style2,
      this.size});
}
