import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customappBar.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/history_section.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/home_page_content.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/weathershimmer.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';

class HompageView extends StatefulWidget {
  HompageView({super.key});

  @override
  State<HompageView> createState() => _HompageViewState();
}

class _HompageViewState extends State<HompageView> {
  TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(textEditingController: textEditingController),
      body: BlocConsumer<WeatherCubitCubit, WeatherCubitState>(
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
              return RefreshIndicator(
                onRefresh: () async {
                  print('cuuuuuuuuuuuuuuuu${state.currntCity}');
                  context.read<WeatherCubitCubit>().getWeather(
                    state.currntCity,
                  );
                },
                child: ListView(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    if (state.showHistory)
                      HistorySection(
                        history: state.history,
                        controller: textEditingController,
                      ),

                    HomePageContent(weatherModel: state.weatherModel),
                  ],
                ),
              );

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
