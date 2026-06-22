import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/LocalData/local_data_source.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/RemoteData/remot_data.dart';

import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo.dart';
import 'package:weather_app_assessment/core/errors/errors.dart';

class WeatherRepoImplamin extends WeatherRepo {
  final RemotData remotdata;
  final LocalDataSource localDataSource;
  WeatherRepoImplamin({required this.remotdata, required this.localDataSource});

  @override
  Future<Either<Failure, WeatherModel>> searchWeather(String cityName) async {
    final cache = await localDataSource.getWeather();
    try {
      final weatherdata = await remotdata.getWeather(cityName);
      localDataSource.cacheWeather(weatherdata.toJson());
      localDataSource.addHistory(cityName);

      return right(weatherdata);
    } on DioException catch (e) {
      if (cache != null) {
        return right(cache);
      }

      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<WeatherModel?> getcach() async {
    var data = await localDataSource.getWeather();
    return data;
  }

  @override
  List<String> getHistory() {
    var data = localDataSource.getHistory();
    print("777777777777777777777777777777777$data");
    return data;
  }
}
