import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/header.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/sectionCard.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/temperatureSection.dart';
import 'package:weather_app_assessment/core/utils/assets.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Weathersection extends StatelessWidget {
  const Weathersection({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Header(cityName: weatherModel.name!),
          SizedBox(
            height: 120,
            width: double.infinity,
            child: Image.network(weatherModel.geticonUrl()),
          ),
          Temperaturesection(
            maxtemp: weatherModel.main!.tempMax!,
            mintemp: weatherModel.main!.tempMax!,
          ),
          Text(
            'updated as of 12:11AM',
            style: Fontstyle.spacegroteskLight18(context),
          ),
          Text(
            weatherModel.weather![0].main!,
            style: Fontstyle.spacegroteskSemibold(context),
          ),
        ],
      ),
    );
  }
}
