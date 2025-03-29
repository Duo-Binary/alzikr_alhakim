import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../doa/presentation/view/doa_view.dart';
import '../../../../prayer/presentation/views/prayer_view.dart';
import '../../../../quran/presentation/views/quran_view.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

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
