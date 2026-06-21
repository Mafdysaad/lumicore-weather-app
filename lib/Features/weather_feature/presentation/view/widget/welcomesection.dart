import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/sectionCard.dart';
import 'package:weather_app_assessment/core/utils/assets.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Welcomesection extends StatelessWidget {
  const Welcomesection({
    super.key,
    required this.inMorning,
    required this.cityName,
  });
  final bool inMorning;
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: SizedBox(
        height: 100,

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: SvgPicture.asset(
                inMorning
                    ? Assets.resourceImagesSunnn
                    : Assets.resourceImagesMoooon,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  inMorning ? 'Good Morning' : 'Good Nigth',
                  style: Fontstyle.spacegroteskLight16(context),
                ),
                Text(cityName, style: Fontstyle.spacegroteskMedium28(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
