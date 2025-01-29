import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/service/shared_pref_service.dart';
import 'core/utils/alzikar_alhakim.dart';
import 'core/utils/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocObs();
  await SharedPrefService.init();
  runApp(const AlzikrAlhakim());
}
