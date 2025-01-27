part of 'quran_bloc.dart';

sealed class QuranState {}

final class QuranInitial extends QuranState {}

final class SearchQuranSuccess extends QuranState {}
