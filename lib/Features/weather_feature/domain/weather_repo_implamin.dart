import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/RemoteData/remot_data.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo.dart';
import 'package:weather_app_assessment/core/errors/errors.dart';

class WeatherRepoImplamin extends WeatherRepo {
  final RemotData remotdata;

  WeatherRepoImplamin({required this.remotdata});

  @override
  Future<Either<Failure, WeatherModel>> searchWeather(String cityName) async {
    try {
      var weather = await remotdata.getWeather(cityName);
      return right(weather);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
