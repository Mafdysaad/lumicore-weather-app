import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo.dart';

part 'weather_cubit_state.dart';

class WeatherCubitCubit extends Cubit<WeatherCubitState> {
  WeatherCubitCubit(this.weatherRepo) : super(WeatherCubitInitial());
  final WeatherRepo weatherRepo;
  Future<void> getWeather(String cityName) async {
    emit(LodingState());
    var reslut = await weatherRepo.searchWeather(cityName);
    reslut.fold(
      (failur) => emit(FailureState(failur.message)),
      (weather) => emit(SuccessState(weather)),
    );
  }
}
