import 'package:dartz/dartz.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/core/errors/errors.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherModel>> searchWeather(String cityName);
  List<String> getHistory();
}
