import 'dart:developer';

import 'package:adhan/adhan.dart';
import 'package:alzikr_alhakim/core/utils/service/location_service.dart';
import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

import '../models/prayer_model.dart';
import 'prayer_repo.dart';

class PrayerRepoImpl extends PrayerRepo {
  final LocationService _locationService = LocationService();
  List<PrayerModel> _prayerList = [];

  double? latitude, longitude;

  @override
  Map getRemaningTime() {
    if (latitude == null && longitude == null) {
      latitude = 30.045743221239082;
      longitude = 31.23537888915283;
    }

    final myCoordinates = Coordinates(latitude!, longitude!);
    final params = CalculationMethod.egyptian.getParameters();

    final prayerTimes = PrayerTimes.today(myCoordinates, params);
    DateTime now = DateTime.now();

    List<Map<String, DateTime>> list = [
      {"الفجر": prayerTimes.fajr},
      {"الشروق": prayerTimes.sunrise},
      {"الظهر": prayerTimes.dhuhr},
      {"العصر": prayerTimes.asr},
      {"المغرب": prayerTimes.maghrib},
      {"العشاء": prayerTimes.isha},
    ];
    _prayerList = list.map((prayer) {
      String prayerName = prayer.keys.first;
      DateTime prayerTime = prayer.values.first;

      String formattedPrayerTime =
          "${prayerTime.hour.toString().padLeft(2, '0')}:${prayerTime.minute.toString().padLeft(2, '0')}";

      return PrayerModel(
          prayerName: prayerName, prayerTime: formattedPrayerTime);
    }).toList();

    for (var prayer in list) {
      String prayerName = prayer.keys.first;
      DateTime prayerTime = prayer.values.first;

      if (prayerTime.isAfter(now)) {
        Duration remaining = prayerTime.difference(now);
        String formattedTime =
            "${remaining.inHours.toString().padLeft(2, '0')}:${(remaining.inMinutes % 60).toString().padLeft(2, '0')}";
        PrayerModel newPrayer =
            PrayerModel(prayerName: prayerName, prayerTime: formattedTime);

        return {'prayer': newPrayer, 'prayerList': _prayerList};
      }
    }
    DateTime tomorrowFajr = prayerTimes.fajr.add(Duration(days: 1));

    Duration remaining = tomorrowFajr.difference(now);
    String formattedTime =
        "${remaining.inHours.toString().padLeft(2, '0')}:${(remaining.inMinutes % 60).toString().padLeft(2, '0')}";
    PrayerModel newPrayer =
        PrayerModel(prayerName: "الفجر", prayerTime: formattedTime);

    return {'prayer': newPrayer, 'prayerList': _prayerList};
  }

  @override
  Future<void> getCurrentLocation() async {
    final location = await _locationService.getCurrentLocation();

    latitude = location?.latitude;
    longitude = location?.longitude;
    // getRemaningTime();

    // List<Placemark> placemarks =
    //     await placemarkFromCoordinates(latitude!, longitude!);
    // log("placemarks: $placemarks");

    // if (placemarks.isNotEmpty) {
    //   String city = placemarks.first.locality ?? "";
    //   String country = placemarks.first.country ?? "";

    //   final translator = GoogleTranslator();
    //   final translatedCity =
    //       await translator.translate(city, from: "en", to: "ar");
    //   final translatedCountry =
    //       await translator.translate(country, from: 'en', to: 'ar');

    //   log("translatedCity: $translatedCity");
    //   log("translatedCountry: $translatedCountry");
    // }
  }
}
