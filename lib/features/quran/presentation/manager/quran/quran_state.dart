part of 'quran_cubit.dart';

sealed class QuranState {}

final class QuranInitial extends QuranState {}

final class ReadQuranLoading extends QuranState {}

final class ReadQuranSuccess extends QuranState {}

final class SearchQuranSuccess extends QuranState {}
