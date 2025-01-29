part of 'sura_cubit.dart';

sealed class SuraState {}

final class SuraInitial extends SuraState {}

final class ChangeSuraClick extends SuraState {}

final class SaveMarkState extends SuraState {}

final class GetMarkState extends SuraState {}
