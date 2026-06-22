import 'package:hive/hive.dart';

class CacheManager {
  final Box box;

  CacheManager(this.box);
}

class LocalDataSource {
  final CacheManager cache;

  LocalDataSource(this.cache);

  void cacheWeather(Map<String, dynamic> data) {
    cache.box.put('weather', data);
  }

  Map<String, dynamic>? getWeather() {
    print('=============> from local');
    return cache.box.get('weather');
  }

  // HISTORY
  void addHistory(String city) {
    final history = List<String>.from(cache.box.get('history') ?? []);

    history.remove(city);
    history.insert(0, city);

    if (history.length > 5) {
      history.removeRange(5, history.length);
    }

    cache.box.put('history', history);
  }

  List<String> getHistory() {
    return List<String>.from(cache.box.get('history') ?? []);
  }

  Future<void> saveTheme(bool isDark) async {
    await cache.box.put('isDark', isDark);
  }

  bool getTheme() {
    return cache.box.get('isDark', defaultValue: false);
  }
}
