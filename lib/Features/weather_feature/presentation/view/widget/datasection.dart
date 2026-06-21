import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Datasection extends StatelessWidget {
  const Datasection({
    super.key,
    required this.rigthData,
    required this.leftData,
  });
  final String rigthData;
  final String leftData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textAlign: TextAlign.start,
          rigthData,
          style: Fontstyle.spacegroteskLight16(context),
        ),
        Spacer(),
        Text(
          textAlign: TextAlign.start,
          leftData,
          style: Fontstyle.spacegroteskLight16(context),
        ),
      ],
    );
  }
}
