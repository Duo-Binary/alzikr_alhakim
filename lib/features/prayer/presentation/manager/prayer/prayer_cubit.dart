import 'dart:async';

import 'package:adhan/adhan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/prayer_model.dart';

part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit() : super(PrayerInitial()) {
    _startTimer();
  }

  Timer? _timer;
  PrayerModel? _lastPrayer;
  List<PrayerModel> prayerList = [];

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      getRemaningTime();
    });
  }

  PrayerModel getRemaningTime() {
    final myCoordinates = Coordinates(30.045159480478336, 31.238907053524134);
    final params = CalculationMethod.karachi.getParameters();

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
    prayerList = list.map((prayer) {
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

        if (_lastPrayer == null ||
            _lastPrayer!.prayerName != newPrayer.prayerName ||
            _lastPrayer!.prayerTime != newPrayer.prayerTime) {
          _lastPrayer = newPrayer;
          emit(PrayerSuccess());
        }
        return newPrayer;
      }
    }
    DateTime tomorrowFajr = prayerTimes.fajr.add(Duration(days: 1));

    Duration remaining = tomorrowFajr.difference(now);
    String formattedTime =
        "${remaining.inHours.toString().padLeft(2, '0')}:${(remaining.inMinutes % 60).toString().padLeft(2, '0')}";
    PrayerModel newPrayer =
        PrayerModel(prayerName: "الفجر", prayerTime: formattedTime);

    if (_lastPrayer == null ||
        _lastPrayer!.prayerName != newPrayer.prayerName ||
        _lastPrayer!.prayerTime != newPrayer.prayerTime) {
      _lastPrayer = newPrayer;
      emit(PrayerSuccess());
    }

    return newPrayer;
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
