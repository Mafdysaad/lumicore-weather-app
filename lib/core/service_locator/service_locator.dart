import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/LocalData/local_data_source.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/RemoteData/remot_data.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo_implamin.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';
import 'package:weather_app_assessment/core/utils/api_service.dart';

final getit = GetIt.instance;

Future<void> setup() async {
  final prefs = await SharedPreferences.getInstance();
  getit.registerSingleton<CacheManager>(CacheManager(prefs));
  getit.registerSingleton<ApiService>(ApiService());
  getit.registerSingleton<RemotData>(RemotData(getit.get<ApiService>()));
  getit.registerSingleton<LocalDataSource>(
    LocalDataSource(getit<CacheManager>()),
  );
  getit.registerSingleton<WeatherRepoImplamin>(
    WeatherRepoImplamin(
      remotdata: getit.get<RemotData>(),
      localDataSource: getit.get<LocalDataSource>(),
    ),
  );
  getit.registerSingleton<WeatherCubitCubit>(
    WeatherCubitCubit(getit.get<WeatherRepoImplamin>()),
  );
}
