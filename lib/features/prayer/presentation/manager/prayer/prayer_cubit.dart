import 'dart:async';

import 'package:alzikr_alhakim/features/prayer/data/repo/prayer_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/prayer_model.dart';

part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit(this._prayerRepo) : super(PrayerInitial()) {
    _startTimer();
  }

  final PrayerRepo _prayerRepo;

  Timer? _timer;
  PrayerModel? _lastPrayer;
  List<PrayerModel> prayerList = [];
  String? locationName = "Cairo, Egypt (default)";

  void _startTimer() async {
    await getLocationName();

    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      getRemaningTime();
    });
  }

  PrayerModel getRemaningTime() {
    final prayer = _prayerRepo.getRemaningTime();
    prayerList = prayer['prayerList'];

    if (_lastPrayer == null ||
        _lastPrayer!.prayerName != prayer['prayer'].prayerName ||
        _lastPrayer!.prayerTime != prayer['prayer'].prayerTime) {
      _lastPrayer = prayer['prayer'];
      emit(PrayerSuccess());
    }
    return prayer['prayer'];
  }

  Future<void> getLocationName() async {
    final location = await _prayerRepo.getCurrentLocation();
    if (location != null) {
      locationName = location;
    }
    prayerList.clear();
    // getRemaningTime();
    emit(GetLocationSuccess());
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
