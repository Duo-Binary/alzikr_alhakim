import 'package:intl/intl.dart';
import 'package:jhijri/_src/_jHijri.dart';

String formatMiladDateTime() {
    DateTime date = DateTime.now();
    String day = DateFormat('d', 'ar').format(date);
    String weekday = DateFormat('EEEE', 'ar').format(date);
    String month = DateFormat('MMMM', 'ar').format(date);
    String year = DateFormat('y', 'ar').format(date);

    return "$day $weekday $month $year";
  }

  String formatHijriDateTime() {
    final date = JHijri.now();
    String day = date.day.toString();
    String weekday = date.dayName;
    String month = date.monthName;
    String year = date.year.toString();

    return "$day $weekday $month $year";
  }