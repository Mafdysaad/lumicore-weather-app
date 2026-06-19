import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.star_border_purple500_outlined),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'wendsday 22,06,2026',
              style: Fontstyle.spacegroteskLight15(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  'Alexandria,',
                  style: Fontstyle.spacegroteskSemibold(context),
                ),
              ],
            ),
          ],
        ),
        Icon(Icons.share),
      ],
    );
  }
}
