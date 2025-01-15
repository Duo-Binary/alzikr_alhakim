part of 'build_quran_bloc.dart';

sealed class BuildQuranEvent {}

final class WriteSuraEvent extends BuildQuranEvent {
  final String suraName;

  WriteSuraEvent({required this.suraName});
}
