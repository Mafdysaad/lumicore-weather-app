import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo_implamin.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customappBar.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/daydetailsSection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/weathersection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/welcomesection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: BlocBuilder<WeatherCubitCubit, WeatherCubitState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                SizedBox(height: 20),
                Welcomesection(),
                Spacer(),
                Weathersection(),
                Spacer(),
                Daydetailssection(),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
