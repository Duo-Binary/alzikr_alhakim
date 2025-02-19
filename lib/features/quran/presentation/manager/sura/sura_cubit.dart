import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/service/shared_pref_service.dart';

part 'sura_state.dart';

class SuraCubit extends Cubit<SuraState> {
  SuraCubit() : super(SuraInitial()) {
    _getMark();
  }

  final SharedPrefService _prefService = SharedPrefService();
  bool isSuraClicked = false;
  int? index;

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
}
