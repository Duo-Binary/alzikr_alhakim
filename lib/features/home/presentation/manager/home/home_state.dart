part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class CheckNewAppVersion extends HomeState {}

final class ChangeIndexState extends HomeState {}
