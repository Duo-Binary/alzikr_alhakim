import 'package:alzikr_alhakim/core/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'build_quran_event.dart';
part 'build_quran_state.dart';

class BuildQuranBloc extends Bloc<BuildQuranEvent, BuildQuranState> {
  List<Map<String, dynamic>> suraList = [];
  BuildQuranBloc() : super(BuildQuranInitial()) {
    on<BuildQuranEvent>((event, emit) {
      if (event is WriteSuraEvent) {
        suraList = Constants.arabicName
            .where((element) =>
                element['name'].toString().contains(event.suraName))
            .toList();
        emit(ReadSuraSuccess());
      }
    });
  }
}
