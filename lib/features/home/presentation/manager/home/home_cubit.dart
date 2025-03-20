import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeInitial());
  final HomeRepo _homeRepo;

  bool? isVersionAvailable;
  Future<void> checkNewAppVersion() async {
    if (isVersionAvailable == null) {
      isVersionAvailable = await _homeRepo.checkNewAppVersion();
      emit(CheckNewAppVersion());
    }
  }
}
