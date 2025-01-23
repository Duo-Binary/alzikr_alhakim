import 'dart:developer';

import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/data/repo/doa_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'doa_state.dart';

class DoaCubit extends Cubit<DoaState> {
  DoaCubit(this._doaRepo) : super(DoaInitial());
  final DoaRepo _doaRepo;
  int currentVerseIndex = 0;
  int currentCountIndex = 0;
  List<DoaModel> doaList = [];
  List<DoaModel> searchList = [];
  Future<void> readJson() async {
    emit(ReadDoaLoading());
    doaList = await _doaRepo.readJson();
    if (doaList.isNotEmpty) {
      emit(ReadDoaSuccess());
    }
  }

  void searchDoaa({required String doaa}) {
    searchList =
        doaList.where((element) => element.category!.contains(doaa)).toList();

    emit(SearchDoaSuccess());
  }

  void changeCount({required int count}) {
    if (count >= currentCountIndex) {
      currentCountIndex++;
      log("here1 $currentCountIndex");
      emit(ChangeCounterIndexSuccess());
    }
  }

  void swapToNextVerseForward({required int length}) {
    if (currentVerseIndex <= length) {
      currentCountIndex = 0;

      currentVerseIndex++;
      log("here3 $currentCountIndex");
      log("here4 $currentCountIndex");
      emit(ChangeCounterIndexSuccess());
    }
  }

  void swapToNextVerseBackward({required int length}) {
    if (currentVerseIndex >= 0) {
      currentVerseIndex--;
      currentCountIndex = 0;
      emit(ChangeCounterIndexSuccess());
    }
  }
}
