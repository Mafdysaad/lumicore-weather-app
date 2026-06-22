import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo.dart';

part 'weather_cubit_state.dart';

class WeatherCubitCubit extends Cubit<WeatherCubitState> {
  WeatherCubitCubit(this.weatherRepo) : super(WeatherCubitInitial());
  final WeatherRepo weatherRepo;
  List<String> history = [];
  Future<void> getWeather(String cityName) async {
    var data = await weatherRepo.getcach();
    var history = weatherRepo.getHistory();
    if (data != null) {
      emit(LodingState());
      emit(SuccessState(data, history));
    }
    var reslut = await weatherRepo.searchWeather(cityName);
    reslut.fold(
      (failur) => emit(FailureState(failur.message)),
      (weather) => emit(SuccessState(weather, history)),
    );
  }

  void loadHistory() {
    history = weatherRepo.getHistory();
    emit(WeatherCubitInitial());
  }
}
