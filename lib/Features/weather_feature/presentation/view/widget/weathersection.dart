import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/header.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/sectionCard.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/temperatureSection.dart';
import 'package:weather_app_assessment/core/utils/assets.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Weathersection extends StatelessWidget {
  const Weathersection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Header(),
          SizedBox(
            height: 120,
            width: double.infinity,
            child: Image.asset(Assets.resourceImagesCloudy),
          ),
          Temperaturesection(),
          Text(
            'updated as of 12:11AM',
            style: Fontstyle.spacegroteskLight18(context),
          ),
          Text('partly sunny', style: Fontstyle.spacegroteskSemibold(context)),
        ],
      ),
    );
  }
}
