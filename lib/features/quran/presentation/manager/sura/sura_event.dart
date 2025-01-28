part of 'sura_bloc.dart';

sealed class SuraEvent {}

final class SuraClickEvent extends SuraEvent {}

final class SuraScrollEvent extends SuraEvent {}
