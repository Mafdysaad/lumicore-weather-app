import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

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
              style: Fontstyle.spacegroteskLight.copyWith(
                fontSize: responsivesize(
                  fontSize: 15,
                  screenWidth: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  'Alexandria,',
                  style: Fontstyle.spacegroteskSemibold.copyWith(
                    fontSize: responsivesize(
                      fontSize: 27,
                      screenWidth: MediaQuery.of(context).size.width,
                    ),
                  ),
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
