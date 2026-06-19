import 'package:flutter/material.dart';

import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customappBar.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/daydetailsSection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/weathersection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/welcomesection.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Column(
          spacing: 12,
          children: [Welcomesection(), Weathersection(), Daydetailssection()],
        ),
      ),
    );
  }
}
