import 'package:shared_preferences/shared_preferences.dart';

class SharedPreFsHelper {
  static const String onBoarding = 'onBoarding';


  static Future<void>setBool(String key, bool value)async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  static Future<bool> getBool(String key, {bool defaultValue = false}) async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? defaultValue;
  }
}