part of 'weather_cubit_cubit.dart';

@immutable
sealed class WeatherCubitState {}

final class WeatherCubitInitial extends WeatherCubitState {}

final class LodingState extends WeatherCubitState {}

final class SuccessState extends WeatherCubitState {
  final WeatherModel weatherModel;
  SuccessState(this.weatherModel);
}

final class FailureState extends WeatherCubitState {
  final String massage;
  FailureState(this.massage);
}
