part of 'build_quran_bloc.dart';

sealed class BuildQuranState {}

final class BuildQuranInitial extends BuildQuranState {}

final class ReadSuraSuccess extends BuildQuranState {}
