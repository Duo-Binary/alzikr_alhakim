import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future<void> setInt(int index) async {
    await _prefs?.setInt("index", index);
  }

  int getInt() {
    return _prefs?.getInt("index") ?? 0;
  }

  Future<void> setDouble({required String key, required double value}) async {
    await _prefs?.setDouble(key, value);
  }

  double? getDouble({required String key}) {
    return _prefs?.getDouble(key);
  }

  Future<void> setString({required String key, required String value}) async {
    await _prefs?.setString(key, value);
  }

  String? getString({required String key}) {
    return _prefs?.getString(key);
  }
}
