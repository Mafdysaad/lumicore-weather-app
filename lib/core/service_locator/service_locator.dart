import 'package:get_it/get_it.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/RemoteData/remot_data.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo_implamin.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';
import 'package:weather_app_assessment/core/utils/api_service.dart';

class ServiceLocator {
  final getit = GetIt.instance;
  Future<void> setup() async {
    getit.registerSingleton<ApiService>(ApiService());
    getit.registerSingleton<RemotData>(RemotData(getit.get<ApiService>()));
    getit.registerSingleton<WeatherRepoImplamin>(
      WeatherRepoImplamin(remotdata: getit.get<RemotData>()),
    );
    getit.registerSingleton<WeatherCubitCubit>(
      WeatherCubitCubit(getit.get<WeatherRepoImplamin>()),
    );
  }
}
