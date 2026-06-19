import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/temperatureText.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

class Temperaturesection extends StatelessWidget {
  const Temperaturesection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        Temperaturetext(fontsize: 38, text: '27'),
        Transform.translate(
          offset: const Offset(0, 14),
          child: Temperaturetext(fontsize: 30, text: '20'),
        ),
        Transform.translate(
          offset: const Offset(0, -10),
          child: Text(
            'C',
            style: Fontstyle.spacegroteskBold.copyWith(
              fontSize: context.responsiveFont(24),
            ),
          ),
        ),
      ],
    );
  }
}
