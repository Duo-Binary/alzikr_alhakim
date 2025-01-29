import 'package:flutter_bloc/flutter_bloc.dart';


part 'sura_event.dart';
part 'sura_state.dart';

class SuraBloc extends Bloc<SuraEvent, SuraState> {
  bool isSuraClicked = false;

  SuraBloc() : super(SuraInitial()) {
    on<SuraEvent>((event, emit) async {
      if (event is SuraClickEvent) {
        isSuraClicked = !isSuraClicked;
        emit(ChangeSuraClick());
      }
      if (event is SuraScrollEvent) {
        isSuraClicked = false;
        emit(ChangeSuraClick());
      }
    });
  }
}
