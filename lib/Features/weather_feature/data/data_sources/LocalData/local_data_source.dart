import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';

class CacheManager {
  final SharedPreferences prefs;

  CacheManager(this.prefs);
}

class LocalDataSource {
  final CacheManager cache;

  LocalDataSource(this.cache);

  Future<void> cacheWeather(Map<String, dynamic> data) async {
    await cache.prefs.remove('weather');
    await cache.prefs.setString('weather', jsonEncode(data));
  }

  Future<WeatherModel?> getWeather() async {
    print('=============> from local');

    final data = cache.prefs.getString('weather');

    if (data == null) return null;

    return WeatherModel.fromJson(jsonDecode(data) as Map<String, dynamic>);
  }

  // HISTORY
  Future<void> addHistory(String city) async {
    final history = cache.prefs.getStringList('history') ?? [];

    history.remove(city);
    history.insert(0, city);

    if (history.length > 5) {
      history.removeRange(5, history.length);
    }

    await cache.prefs.setStringList('history', history);
  }

  List<String> getHistory() {
    return cache.prefs.getStringList('history') ?? [];
  }

  Future<void> saveTheme(bool isDark) async {
    await cache.prefs.setBool('isDark', isDark);
  }

  bool getTheme() {
    return cache.prefs.getBool('isDark') ?? false;
  }
}
