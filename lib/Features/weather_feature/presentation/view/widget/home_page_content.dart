import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/daydetailsSection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/weathersection.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/welcomesection.dart';

class HomePageContent extends StatelessWidget {
  final WeatherModel weatherModel;
  const HomePageContent({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
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
  }
}
