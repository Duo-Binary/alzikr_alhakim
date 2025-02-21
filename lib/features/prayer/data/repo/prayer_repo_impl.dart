import 'package:alzikr_alhakim/core/utils/get_prayers_time.dart';
import 'package:alzikr_alhakim/core/utils/service/location_service.dart';
import 'package:alzikr_alhakim/core/utils/service/notification_service.dart';
import 'package:alzikr_alhakim/core/utils/service/work_manager_service.dart';
import 'package:geocoding/geocoding.dart';

import '../models/prayer_model.dart';
import 'prayer_repo.dart';

class PrayerRepoImpl extends PrayerRepo {
  final LocationService _locationService = LocationService();
  final NotificationService _notificationService = NotificationService();
  List<PrayerModel> _prayerList = [];

  double? _latitude, _longitude;

  @override
  Map getRemaningTime() {
    if (_latitude == null && _longitude == null) {
      _latitude = 30.045743221239082;
      _longitude = 31.23537888915283;
    }

    List<Map<String, DateTime>> list =
        getPrayersTime(latitude: _latitude!, longitude: _longitude!);
    DateTime now = DateTime.now();

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
    DateTime tomorrowFajr = list[0]["الفجر"]!.add(Duration(days: 1));

    Duration remaining = tomorrowFajr.difference(now);
    String formattedTime =
        "${remaining.inHours.toString().padLeft(2, '0')}:${(remaining.inMinutes % 60).toString().padLeft(2, '0')}";
    PrayerModel newPrayer =
        PrayerModel(prayerName: "الفجر", prayerTime: formattedTime);

    return {'prayer': newPrayer, 'prayerList': _prayerList};
  }

  @override
  Future<String?> getCurrentLocation() async {
    final location = await _locationService.getCurrentLocation();

    _latitude = location?.latitude;
    _longitude = location?.longitude;

    // work manager for notification
    await WorkManagerService()
        .intitWorkManager(latitude: _latitude!, longitude: _longitude!);

    if (_latitude != null && _longitude != null) {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        _latitude!,
        _longitude!,
      );
      return "${placemarks.first.locality}, ${placemarks.first.country}";
    }

    return null;
  }

  @override
  Future<void> initNotifications() async {
    await _notificationService.initNotifications();
  }
}
