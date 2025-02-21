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