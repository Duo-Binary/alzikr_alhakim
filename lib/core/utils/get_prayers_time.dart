import 'package:adhan/adhan.dart';

List<Map<String, DateTime>> getPrayersTime(
    {required double latitude, required double longitude}) {
  final myCoordinates = Coordinates(latitude, longitude);
  final params = CalculationMethod.egyptian.getParameters();

  final prayerTimes = PrayerTimes.today(myCoordinates, params);
  List<Map<String, DateTime>> list = [
    {"الفجر": prayerTimes.fajr},
    {"الشروق": prayerTimes.sunrise},
    {"الظهر": prayerTimes.dhuhr},
    {"العصر": prayerTimes.asr},
    {"المغرب": prayerTimes.maghrib},
    {"العشاء": prayerTimes.isha},
  ];

  return list;
}

List<Map<String, DateTime>> getPrayersTimeNotification(
    {required double latitude, required double longitude}) {
  final myCoordinates = Coordinates(latitude, longitude);
  final params = CalculationMethod.egyptian.getParameters();
  DateTime now = DateTime.now();

  final todayPrayerTimes = PrayerTimes.today(myCoordinates, params);
  DateTime tomorrow = now.add(Duration(days: 1));
  PrayerTimes tomorrowPrayerTimes = PrayerTimes(
      myCoordinates,
      DateComponents(
        tomorrow.year,
        tomorrow.month,
        tomorrow.day,
      ),
      params);
  List<Map<String, DateTime>> list = [
    {"الفجر": todayPrayerTimes.fajr},
    {"الشروق": todayPrayerTimes.sunrise},
    {"الظهر": todayPrayerTimes.dhuhr},
    {"العصر": todayPrayerTimes.asr},
    {"المغرب": todayPrayerTimes.maghrib},
    {"العشاء": todayPrayerTimes.isha},
    {"الفجر": tomorrowPrayerTimes.fajr},
    {"الشروق": tomorrowPrayerTimes.sunrise},
    {"الظهر": tomorrowPrayerTimes.dhuhr},
    {"العصر": tomorrowPrayerTimes.asr},
    {"المغرب": tomorrowPrayerTimes.maghrib},
    {"العشاء": tomorrowPrayerTimes.isha},
  ];

  return list;
}
