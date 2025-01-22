part of 'doa_cubit.dart';

sealed class DoaState {}

final class DoaInitial extends DoaState {}

final class ReadDoaLoading extends DoaState {}

final class ReadDoaSuccess extends DoaState {}

final class SearchDoaSuccess extends DoaState {}
final class ChangeCounterIndexSuccess extends DoaState {}
