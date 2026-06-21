import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/sectionCard.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/welcomesection.dart';

class Weathershimmer extends StatelessWidget {
  const Weathershimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).cardColor,
        highlightColor: Theme.of(context).hoverColor,
        child: Column(
          children: [
            SizedBox(height: 20),
            SectionCard(child: SizedBox(height: 200, width: double.infinity)),
            Spacer(),
            SectionCard(child: SizedBox(height: 200, width: double.infinity)),
            Spacer(),
            SectionCard(child: SizedBox(height: 200, width: double.infinity)),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
