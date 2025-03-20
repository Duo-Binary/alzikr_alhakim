import 'package:alzikr_alhakim/core/utils/service/api_service.dart';
import 'package:alzikr_alhakim/features/home/data/repo/home_repo.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../core/models/app_version_info_model/app_version_info_model.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService _apiService = ApiService();
  @override
  Future<bool> checkNewAppVersion() async {
    final connectionChecker = InternetConnectionChecker.instance;

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;

    bool isVersionAvailable = false;
    bool isConnected = await connectionChecker.hasConnection;

    if (isConnected) {
      AppVersionInfoModel appVersionInfoModel = await _apiService.get();

      isVersionAvailable = version != appVersionInfoModel.record.latestVersion;
    }

    return isVersionAvailable;
  }
}
