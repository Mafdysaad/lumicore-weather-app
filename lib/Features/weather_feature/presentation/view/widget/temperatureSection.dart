import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/temperatureText.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Temperaturesection extends StatelessWidget {
  const Temperaturesection({
    super.key,
    required this.maxtemp,
    required this.mintemp,
  });
  final double maxtemp, mintemp;

  @override
  Widget build(BuildContext context) {
    print('================????????????????? main$mintemp');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        Temperaturetext(fontsize: 38, text: '$maxtemp'),
        Transform.translate(
          offset: const Offset(0, 14),
          child: Temperaturetext(fontsize: 30, text: '$mintemp'),
        ),
        Transform.translate(
          offset: const Offset(0, -10),
          child: Text('C', style: Fontstyle.spacegroteskBold24(context)),
        ),
      ],
    );
  }
}
