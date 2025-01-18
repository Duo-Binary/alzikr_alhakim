import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

import '../models/quran_model.dart';
import 'quran_repo.dart';

class QuranRepoImpl extends QuranRepo {
  @override
  Future<List<QuranModel>> readJson() async {
    final String jsonName =
        await rootBundle.loadString("assets/json/quran.json");
    final data = json.decode(jsonName);
    if (data is List) {
      final List<QuranModel> quranList = data.map((e) {
        return QuranModel.fromJson(e as Map<String, dynamic>);
      }).toList();
      return quranList;
    }
    log("Error: Data is not a List.");
    return [];
  }
}
