import '../models/quran_model.dart';

abstract class QuranRepo {
  Future<List<QuranModel>> readJson();
}
