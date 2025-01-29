part of 'sura_bloc.dart';

sealed class SuraEvent {}

final class SuraClickEvent extends SuraEvent {}

final class SuraScrollEvent extends SuraEvent {}

final class SaveMarkEvent extends SuraEvent {
  final int index;

  SaveMarkEvent({required this.index});
}

final class GetMarkEvent extends SuraEvent {}
