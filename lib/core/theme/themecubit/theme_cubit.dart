import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/LocalData/local_data_source.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(this.localdatasource) : super(ThemeMode.light);
  final LocalDataSource localdatasource;

  void loadTehem() {
    final isDark = localdatasource.getTheme();
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  void toggleTheme() async {
    final isDark = state == ThemeMode.dark;
    await localdatasource.saveTheme(!isDark);
    emit(!isDark ? ThemeMode.dark : ThemeMode.light);
  }
}
