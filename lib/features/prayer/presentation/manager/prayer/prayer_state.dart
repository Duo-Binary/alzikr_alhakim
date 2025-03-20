part of 'prayer_cubit.dart';

sealed class PrayerState {}

final class PrayerInitial extends PrayerState {}

final class PrayerSuccess extends PrayerState {}

final class GetLocationSuccess extends PrayerState {}
