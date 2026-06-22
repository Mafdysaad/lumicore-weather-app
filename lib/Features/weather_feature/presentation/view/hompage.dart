import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/hompage_view.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';
import 'package:weather_app_assessment/core/service_locator/service_locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getit<WeatherCubitCubit>()..getWeather("dubai"),
      child: const HompageView(),
    );
  }
}
