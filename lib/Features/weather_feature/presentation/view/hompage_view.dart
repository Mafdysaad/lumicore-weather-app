import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/home_page_content.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/weathershimmer.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';

class HompageView extends StatelessWidget {
  const HompageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubitCubit, WeatherCubitState>(
      listener: (context, state) {
        if (state is FailureState) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Error'),
              content: Text(state.massage),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      },
      builder: (context, state) {
        switch (state) {
          case LodingState():
            return const Weathershimmer();

          case SuccessState():
            return HomePageContent(weatherModel: state.weatherModel);

          default:
            return const SizedBox();
        }
      },
    );
  }
}
