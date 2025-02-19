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
}
