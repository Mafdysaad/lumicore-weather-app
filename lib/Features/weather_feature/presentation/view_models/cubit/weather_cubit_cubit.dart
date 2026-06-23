import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo.dart';

import '../../../data/models/weather_model/weather_model.dart';

part 'weather_cubit_state.dart';

class WeatherCubitCubit extends Cubit<WeatherCubitState> {
  WeatherCubitCubit(this.weatherRepo) : super(WeatherCubitInitial());
  final WeatherRepo weatherRepo;
  DateTime? requesTime;
  List<String> history = [];
  bool isSearchFocused = false;

  Future<void> getWeather(String cityName) async {
    loadHistory();
    var reslut = await weatherRepo.searchWeather(cityName);
    reslut.fold(
      (failur) => emit(FailureState(failur.message)),
      (weather) => emit(SuccessState(weather, history, true, weather.name!)),
    );
  }

  void loadrequestTeime() {
    weatherRepo.getRequesTime();
  }

  void loadHistory() {
    history = weatherRepo.getHistory();
    print("hiiiiiiiiiiistory$history");
  }

  void showHistory() {
    print('6666666666666666666 ${state.runtimeType}');
    if (state is SuccessState) {
      final current = state as SuccessState;

      emit(
        SuccessState(
          current.weatherModel,
          current.history,
          true,
          current.currntCity,
        ),
      );
    }
  }

  loadcurrentCity() async {
    var currenCity = await weatherRepo.getcurrenCity();
    await getWeather(currenCity!);
  }

  void hideHistory() {
    print('6666666666666666666 ${state.runtimeType}');
    if (state is SuccessState) {
      final current = state as SuccessState;
      emit(
        SuccessState(
          current.weatherModel,
          current.history,
          false,
          current.currntCity,
        ),
      );
    }
  }
}
