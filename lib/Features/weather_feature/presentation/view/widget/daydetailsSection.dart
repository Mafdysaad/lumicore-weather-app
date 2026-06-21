import 'package:flutter/material.dart';

import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/datasection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/daydetailsHaderSection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/sectionCard.dart';

class Daydetailssection extends StatelessWidget {
  const Daydetailssection({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        children: [
          Daydetailshadersection(),
          SizedBox(height: 15),
          Column(
            spacing: 10,
            children: [
              Datasection(
                rigthData: 'Feels Like = ${weatherModel.main!.feelsLike}°',
                leftData: 'Pressure = ${weatherModel.main!.pressure}mb',
              ),
              Datasection(
                rigthData: 'visibility = ${weatherModel.visibility} m',
                leftData: 'wind speed = ${weatherModel.wind!.speed} m/s',
              ),
              Datasection(
                rigthData: 'Humidity = ${weatherModel.main!.humidity}%',
                leftData: ' Temperature = ${weatherModel.main!.temp} c',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
