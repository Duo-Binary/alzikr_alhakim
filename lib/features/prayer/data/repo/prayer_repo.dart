abstract class PrayerRepo {
  Map getRemaningTime();
  Future<void> getCurrentLocation();
  Future<void> initNotifications();
}
