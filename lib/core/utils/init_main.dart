import 'package:alzikr_alhakim/core/utils/cache_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:quran_library/quran_library.dart';

import 'service/shared_pref_service.dart';
import 'alzikar_alhakim.dart';
import 'bloc_observer.dart';
import 'set_system_setting.dart';

Future<void> initMain() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = BlocObs();
  setSystemSetting();

  await Future.wait([
    QuranLibrary().init(),
    CacheImages.loadSvgImages(),
    initializeDateFormatting('ar_EG', null),
    SharedPrefService.init()
  ]);

  runApp(const AlzikrAlhakim());
}
