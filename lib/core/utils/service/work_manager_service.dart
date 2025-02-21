import 'package:workmanager/workmanager.dart';

import 'notification_service.dart';

class WorkManagerService {
  Future<void> intitWorkManager(
      {required double latitude, required double longitude}) async {
    await Workmanager().initialize(
      _callbackDispatcher,
      isInDebugMode: false,
    );

    await Workmanager().registerPeriodicTask(
        "prayerTimes", "prayerNotification",
        frequency: const Duration(minutes: 15),
        inputData: {"latitude": latitude, "longitude": longitude});
  }
}

@pragma('vm:entry-point')
void _callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    if (inputData != null) {
      await NotificationService().getNotifications(
          latitude: inputData['latitude'], longitude: inputData['longitude']);
    }

    return Future.value(true);
  });
}
