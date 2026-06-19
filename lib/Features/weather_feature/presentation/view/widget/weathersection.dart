import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/header.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/temperatureSection.dart';
import 'package:weather_app_assessment/core/utils/assets.dart';

class Weathersection extends StatelessWidget {
  const Weathersection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Header(),
          SizedBox(
            height: 120,
            child: Image.asset(Assets.resourceImagesCloudy),
          ),
          Temperaturesection(),
        ],
      ),
    );
  }
}
