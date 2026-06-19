import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Daydetailshadersection extends StatelessWidget {
  const Daydetailshadersection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Day details', style: Fontstyle.spacegroteskSemibold(context)),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
      ],
    );
  }
}
