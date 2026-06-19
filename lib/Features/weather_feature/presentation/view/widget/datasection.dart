import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

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
          rigthData,
          style: Fontstyle.spacegroteskMedium.copyWith(
            fontSize: context.responsiveFont(24),
          ),
        ),
        Spacer(),
        Text(
          leftData,
          style: Fontstyle.spacegroteskMedium.copyWith(
            fontSize: context.responsiveFont(24),
          ),
        ),
      ],
    );
  }
}
