import 'package:dio/dio.dart';

import '../../models/app_version_info_model/app_version_info_model.dart';
import '../constants/constants.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<AppVersionInfoModel> get() async {
    final response = await _dio.get(Constants.url);

    AppVersionInfoModel appVersionInfoModel =
        AppVersionInfoModel.fromJson(response.data);

    return appVersionInfoModel;
  }
}
