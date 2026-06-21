import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

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
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: Fontstyle.spacegroteskBold(
              context: context,
              fontsize: fontsize,
            ),
          ),
        ),
        Text(
          '°',
          style: Fontstyle.spacegroteskBold(
            context: context,
            fontsize: fontsize,
          ),
        ),
      ],
    );
  }
}
