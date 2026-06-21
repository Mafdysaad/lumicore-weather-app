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
    final list = List<String>.from(cache.box.get('history') ?? []);

    if (!list.contains(city)) {
      list.add(city);
    }

    cache.box.put('history', list);
  }

  List<String> getHistory() {
    return List<String>.from(cache.box.get('history') ?? []);
  }
}
