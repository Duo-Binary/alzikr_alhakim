import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/quran_model.dart';
import '../../../data/repo/quran_repo.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  final QuranRepo _quranRepo;

  QuranCubit(this._quranRepo) : super(QuranInitial());

  List<QuranModel> quranList = [];
  List<QuranModel> searchList = [];
  Future<void> readJson() async {
    emit(ReadQuranLoading());
    quranList = await _quranRepo.readJson();
    if (quranList.isNotEmpty) {
      emit(ReadQuranSuccess());
    }
  }

  void searchQuran({required String sura}) {
    searchList =
        quranList.where((element) => element.name!.contains(sura)).toList();

    emit(SearchQuranSuccess());
  }
}
