import 'package:alzikr_alhakim/core/utils/get_prayers_time.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static onTap(NotificationResponse details) {}
  Future<void> initNotifications() async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/launcher_icon"),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      ),
    );
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
    await _checkAndroidNotificationPermission();
  }

  Future<void> _checkAndroidNotificationPermission() async {
    bool? androidPermisions = await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.areNotificationsEnabled();

    if (androidPermisions == null || androidPermisions == false) {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }
  }

  Future<void> showScheduledNotification(
      {required String prayerName,
      required int day,
      required int hour,
      required int minute}) async {
    NotificationDetails notificationDetails = _setNotificationsDetails();
    await _setTimeZone();

    await _flutterLocalNotificationsPlugin.zonedSchedule(
        day + hour + minute + 1,
        "حان الآن وقت صلاة $prayerName",
        "اذكر الله واستعد للصلاة 🙏",
        tz.TZDateTime(
          tz.local,
          DateTime.now().year,
          DateTime.now().month,
          day,
          hour,
          minute,
          3,
        ),
        notificationDetails,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle);
  }

  Future<void> _setTimeZone() async {
    tz.initializeTimeZones();

    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
  }

  NotificationDetails _setNotificationsDetails() {
    AndroidNotificationDetails? android = AndroidNotificationDetails(
        "مواقيت الصلاة", "مواقيت الصلاة",
        priority: Priority.high, importance: Importance.max);

    DarwinNotificationDetails? iOS = DarwinNotificationDetails(
        presentAlert: true, presentBadge: true, presentSound: true);
    NotificationDetails notificationDetails =
        NotificationDetails(android: android, iOS: iOS);
    return notificationDetails;
  }

  @pragma('vm:entry-point')
  Future<void> getNotifications(
      {required double latitude, required double longitude}) async {
    for (var prayer in getPrayersTimeNotification(
        latitude: latitude, longitude: longitude)) {
      if (prayer.values.first.isAfter(DateTime.now())) {
        await NotificationService().showScheduledNotification(
            prayerName: prayer.keys.first,
            day: prayer.values.first.day,
            hour: prayer.values.first.hour,
            minute: prayer.values.first.minute);
      }
    }
  }
}
