import 'package:alzikr_alhakim/core/utils/cache_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../service/shared_pref_service.dart';
import 'alzikar_alhakim.dart';
import 'bloc_observer.dart';

Future<void> initMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocObs();
  await CacheImages.loadSvgImages();
  await initializeDateFormatting('ar_EG', null);
  await SharedPrefService.init();
  runApp(const AlzikrAlhakim());
}
