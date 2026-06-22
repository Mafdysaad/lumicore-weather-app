import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customtextfiled.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubitCubit, WeatherCubitState>(
      builder: (context, state) {
        if (state is HistoryLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Customtextfield(),
              const SizedBox(height: 12),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: state.history.map((city) {
                  return ActionChip(
                    label: Text(city),
                    onPressed: () {
                      context.read<WeatherCubitCubit>().getWeather(city);
                    },
                  );
                }).toList(),
              ),
            ],
          );
        }
        return Customtextfield();
      },
    );
  }
}
