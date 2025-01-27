import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/alzikar_alhakim.dart';
import 'core/utils/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocObs();

  runApp(const AlzikrAlhakim());
}
