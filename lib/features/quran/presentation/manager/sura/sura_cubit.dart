import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../../../core/utils/service/shared_pref_service.dart';

part 'sura_state.dart';

class SuraCubit extends Cubit<SuraState> {
  SuraCubit() : super(SuraInitial()) {
    _getMark();
  }

  late PageController pageController;

  final SharedPrefService _prefService = SharedPrefService();

  bool isSuraClicked = false;
  int? index, page;

  initPageController(int initialPage) {
    pageController = PageController(initialPage: initialPage);
    _initSuraView();
    emit(InitPageControllerState());
  }

  void suraClick() {
    isSuraClicked = !isSuraClicked;
    emit(ChangeSuraClick());
  }

  void suraScroll() {
    isSuraClicked = false;
    emit(ChangeSuraClick());
  }

  Future<void> saveMark(int activeIndex) async {
    await _prefService.setInt(activeIndex);
    emit(SaveMarkState());
    _getMark();
  }

  void _getMark() {
    index = _prefService.getInt();
    emit(GetMarkState());
  }

  void getPage(int index) {
    page = index;
    emit(GetMarkState());
  }

  void _initSuraView() {
    WakelockPlus.enable();

    pageController.addListener(() {
      if (isSuraClicked) {
        if (pageController.position.pixels != 0) {
          suraScroll();
        }
      }
    });
  }

  @override
  Future<void> close() {
    WakelockPlus.disable();
    return super.close();
  }
}
