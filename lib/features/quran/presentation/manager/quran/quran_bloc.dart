import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/quran_model.dart';
import '../../../data/repo/quran_repo.dart';

part 'quran_event.dart';
part 'quran_state.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  final QuranRepo _quranRepo;
  List<QuranModel> quranList = [];
  List<QuranModel> searchList = [];
  QuranBloc(this._quranRepo) : super(QuranInitial()) {
    on<QuranEvent>((event, emit) async {
      if (event is ReadJsonEvent) {
        emit(ReadQuranLoading());
        quranList = await _quranRepo.readJson();
        if (quranList.isNotEmpty) {
          emit(ReadQuranSuccess());
        }
      }
      if (event is SearchQuranEvent) {
        searchList = quranList
            .where((element) => element.name!.contains(event.sura))
            .toList();

        emit(SearchQuranSuccess());
      }
    });
  }
}
