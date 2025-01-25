import 'package:alzikr_alhakim/core/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'quran_event.dart';

part 'quran_state.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  List<Map<String, dynamic>> searchList = [];

  QuranBloc() : super(QuranInitial()) {
    on<QuranEvent>((event, emit) {
      if (event is WriteQuranEvent) {
        searchList = Constants.arabicName
            .where((element) =>
                element['name'].toString().contains(event.suraName))
            .toList();

        emit(SearchQuranSuccess());
      }
    });
  }
}
