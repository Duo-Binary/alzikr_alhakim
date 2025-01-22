import 'dart:convert';
import 'dart:developer';

import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/data/repo/doa_repo.dart';
import 'package:flutter/services.dart';

class DoaRepoImpl implements DoaRepo{
  @override
  Future<List<DoaModel>> readJson() async {
    final String jsonName =
        await rootBundle.loadString("assets/json/azkar.json");
    final data = json.decode(jsonName);
    if (data is List) {
      final List<DoaModel> azkarList = data.map((e) {
        return DoaModel.fromJson(e as Map<String, dynamic>);
      }).toList();
      return azkarList;
    }
    log("Error: Data is not a List.");
    return [];
  }
}