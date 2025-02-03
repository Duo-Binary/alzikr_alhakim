import 'dart:developer';
import 'package:alzikr_alhakim/features/doa/doa_data.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_event.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DoaBloc extends Bloc<DoaaEvent, DoaState> {
  List<Map<String, dynamic>> searchList = [];
  int currentVerseIndex = 0;
  int currentCountIndex = 0;
   DoaBloc() : super(DoaInitial()) {
    on<WriteDoaEvent>(_onWriteDoa);
  }
  void _onWriteDoa(WriteDoaEvent event, Emitter<DoaState> emit) {
    String query = event.doaName;
    
    if (query.isEmpty) {
      searchList = [];
    } else {
      searchList = doaData.where((element) {
        String category = element['category'].toString();
        List<String> queryWords = query.split(' ');

        // Ensure at least one word from the search query matches
        return queryWords.any((word) => category.contains(word));
      }).toList();
    }

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
