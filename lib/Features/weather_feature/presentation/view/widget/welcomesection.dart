import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app_assessment/core/utils/assets.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

class Welcomesection extends StatelessWidget {
  const Welcomesection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: SvgPicture.asset(Assets.resourceImagesMoooon),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'good morning ',
                style: Fontstyle.spacegroteskLight.copyWith(
                  fontSize: responsivesize(
                    fontSize: 16,
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Text(
                'Mafdy Saad ',
                style: Fontstyle.spacegroteskMedium.copyWith(
                  fontSize: responsivesize(
                    fontSize: 28,
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
