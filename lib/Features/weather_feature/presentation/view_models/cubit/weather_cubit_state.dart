part of 'weather_cubit_cubit.dart';

@immutable
sealed class WeatherCubitState {}

final class WeatherCubitInitial extends WeatherCubitState {}

final class LodingState extends WeatherCubitState {}

final class SuccessState extends WeatherCubitState {
  final WeatherModel weatherModel;
  final List<String> history;
  final bool showHistory;
  final String currntCity;
  SuccessState(
    this.weatherModel,
    this.history,
    this.showHistory,
    this.currntCity,
  );
}

final class FailureState extends WeatherCubitState {
  final String massage;
  FailureState(this.massage);
}

final class WeatherUiChanged extends WeatherCubitState {}

final class HistoryLoaded extends WeatherCubitState {
  final List<String> history;
  HistoryLoaded(this.history);
}
