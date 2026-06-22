import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({
    super.key,
    required this.controller,
    required this.history,
  });

  final TextEditingController controller;
  final List<String> history;

  @override
  Widget build(BuildContext context) {
    if (history.isEmpty) {
      return const SizedBox();
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: history.map((city) {
        return ActionChip(
          avatar: const Icon(Icons.history, size: 16),
          label: Text(city),
          onPressed: () {
            controller.text = city;
            context.read<WeatherCubitCubit>().getWeather(city);
          },
        );
      }).toList(),
    );
  }
}
