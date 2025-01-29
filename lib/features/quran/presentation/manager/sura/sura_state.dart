part of 'sura_bloc.dart';

sealed class SuraState {}

final class SuraInitial extends SuraState {}

final class ChangeSuraClick extends SuraState {}

final class SaveMarkState extends SuraState {}

final class GetMarkState extends SuraState {
  final int index;

  GetMarkState({required this.index});
}
