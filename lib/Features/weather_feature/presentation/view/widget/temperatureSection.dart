import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/temperatureText.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

class Temperaturesection extends StatelessWidget {
  const Temperaturesection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            iconSize: 40,
          ),
          Temperaturetext(fontsize: 72, text: '27'),
          Column(
            children: [
              const SizedBox(height: 35),
              Temperaturetext(fontsize: 48, text: '20'),
            ],
          ),

          Text(
            'C',
            style: Fontstyle.spacegroteskBold.copyWith(
              fontSize: responsivesize(fontSize: 38, screenWidth: width),
            ),
          ),
        ],
      ),
    );
  }
}
