import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setEn(bool en) async => await _preferences!.setBool("En", en);
  static bool? getEn() => _preferences!.getBool("En");
}
