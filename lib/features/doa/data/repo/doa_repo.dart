
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';

abstract class DoaRepo {
  Future<List<DoaModel>> readJson();
}

