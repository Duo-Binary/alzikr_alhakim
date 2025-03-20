import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../doa/presentation/view/doa_view.dart';
import '../../../../prayer/presentation/views/prayer_view.dart';
import '../../../../quran/presentation/views/quran_view.dart';
import '../../../data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeInitial());
  final HomeRepo _homeRepo;

  bool? isVersionAvailable;
  String? downloadUrl;
  Future<void> checkNewAppVersion() async {
    if (isVersionAvailable == null) {
      final version = await _homeRepo.checkNewAppVersion();
      isVersionAvailable = version["isVersionAvailable"];
      downloadUrl = version["downloadUrl"];

      emit(CheckNewAppVersion());
    }
  }

  int activeIndex = 0;
  List views = const [
    PrayerView(),
    QuranView(),
    DoaaView(),
  ];

  void changeIndex(int index) {
    activeIndex = index;
    emit(ChangeIndexState());
  }

  Future<void> launchDownloadUrl(String downloadUrl) async {
    final Uri url = Uri.parse(downloadUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $downloadUrl');
    }
  }
}
