import 'dart:async' show Future;
import 'package:shared_preferences/shared_preferences.dart' as sp;
/* Define Shared prefrence Singleton Pattern */

class SharedPrefs {
  SharedPrefs._();

  static Future<sp.SharedPreferences> get _instance async =>
      _prefsInstance = await sp.SharedPreferences.getInstance();
  static sp.SharedPreferences? _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<sp.SharedPreferences?> initialize() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static String getString(String key, [String? defValue]) {
    return _prefsInstance!.getString(key) ?? defValue ?? "";
  }

  static Future<bool> setString(String key, String value) async {
    var prefs = await _instance;
    return prefs.setString(key, value);
  }

  static int getInt(String key, [int? defValue]) {
    return _prefsInstance!.getInt(key) ?? defValue ?? 0;
  }

  static Future<bool> setInt(String key, int value) async {
    var prefs = await _instance;
    return prefs.setInt(key, value);
  }

  static bool getBool(String key, [bool? defValue]) {
    return _prefsInstance!.getBool(key) ?? defValue ?? false;
  }

  static Future<bool> setBool(String key, bool value) async {
    var prefs = await _instance;
    return prefs.setBool(key, value);
  }

  static double getDouble(String key, [double? defValue]) {
    return _prefsInstance!.getDouble(key) ?? defValue ?? 0.0;
  }

  static Future<bool> setDouble(String? key, double? value) async {
    var prefs = await _instance;
    return prefs.setDouble(key!, value!);
  }

  static Future<void> clear() async {
    var prefs = await _instance;
    prefs.clear();
  }

  static Future<void> reload() async {
    var prefs = await _instance;
    prefs.reload();
  }
}
