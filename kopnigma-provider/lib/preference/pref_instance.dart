import 'package:shared_preferences/shared_preferences.dart';

class PrefInstance {

  static Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  static Future<int> getInt(String key) async {
    final p = await prefs;
    return p.getInt(key) ?? 0;
  }

  static Future setInt(String key, int value) async {
    final p = await prefs;
    return p.setInt(key, value);
  }

  static Future<String> getString(String key) async {
    final p = await prefs;
    return p.getString(key) ?? "";
  }

  static Future setString(String key, String value) async {
    final p = await prefs;
    return p.setString(key, value);
  }

  static Future clear() async {
    final p = await prefs;
    return p.clear();
  }
}