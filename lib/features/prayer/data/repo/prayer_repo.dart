abstract class PrayerRepo {
  Map getRemaningTime();
  Future<String?> getCurrentLocation();
  Future<void> initNotifications();
}
