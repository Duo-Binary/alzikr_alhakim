import 'dart:developer';

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
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
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
      required int hour,
      required int minute}) async {
    NotificationDetails notificationDetails = _setNotificationsDetails();
    await _setTimeZone();

    await _flutterLocalNotificationsPlugin.zonedSchedule(
        hour + minute + 1,
        "حان الآن وقت صلاة $prayerName",
        "اذكر الله واستعد للصلاة 🙏",
        tz.TZDateTime(
          tz.local,
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
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

    log("local befor: ${tz.local.name}");
    log("time befor: ${tz.TZDateTime.now(tz.local)}");
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));

    log("local after: ${tz.local.name}");
    log("time after: ${tz.TZDateTime.now(tz.local)}");
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
}
