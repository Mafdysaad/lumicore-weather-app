import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customappBar.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/home_page_content.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/weathershimmer.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class HompageView extends StatefulWidget {
  const HompageView({super.key});

  @override
  State<HompageView> createState() => _HompageState();
}

class _HompageState extends State<HompageView> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: BlocConsumer<WeatherCubitCubit, WeatherCubitState>(
        listener: (context, state) {
          if (state is FailureState) {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                insetPadding: const EdgeInsets.symmetric(horizontal: 20),
                title: Text(
                  'Error',
                  style: Fontstyle.spacegroteskBold24(context),
                ),
                content: Text(
                  state.massage,
                  style: Fontstyle.spacegroteskLight18(context),
                ),
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
          if (state is LodingState) {
            return const Weathershimmer();
          }
          if (state is SuccessState) {
            return HomePageContent(weatherModel: state.weatherModel);
          }

          return const SizedBox();
        },
      ),
    );
  }
}
