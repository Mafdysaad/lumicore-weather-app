import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/datasection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/daydetailsHaderSection.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/sectionCard.dart';

class Daydetailssection extends StatelessWidget {
  const Daydetailssection({super.key});

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
                rigthData: '20° Feels Like',
                leftData: ' 20° Feels Like',
              ),
              Datasection(
                rigthData: '20° Feels Like',
                leftData: ' 20° Feels Like',
              ),
              Datasection(
                rigthData: '20° Feels Like',
                leftData: ' 20° Feels Like',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
