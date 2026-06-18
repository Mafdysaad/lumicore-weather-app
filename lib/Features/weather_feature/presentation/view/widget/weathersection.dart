import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/header.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

class Weathersection extends StatelessWidget {
  const Weathersection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 300, child: Column(children: [Header()]));
  }
}
