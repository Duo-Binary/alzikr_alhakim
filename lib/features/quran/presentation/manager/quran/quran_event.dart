part of 'quran_bloc.dart';

sealed class QuranEvent {}

final class ReadJsonEvent extends QuranEvent {}

final class SearchQuranEvent extends QuranEvent {
  final String sura;

  SearchQuranEvent({required this.sura});
}
