import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

class Temperaturetext extends StatelessWidget {
  const Temperaturetext({
    super.key,
    required this.fontsize,
    required this.text,
  });
  final double fontsize;
  final String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: Fontstyle.spacegroteskBold.copyWith(
              fontSize: responsivesize(fontSize: fontsize, screenWidth: width),
            ),
          ),
        ),
        Text(
          '°',
          style: Fontstyle.spacegroteskBold.copyWith(
            fontSize: responsivesize(fontSize: fontsize, screenWidth: width),
          ),
        ),
      ],
    );
  }
}
