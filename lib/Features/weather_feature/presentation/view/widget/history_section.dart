import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';

class HistorySection extends StatefulWidget {
  const HistorySection({
    super.key,
    required this.controller,
    required this.history,
  });

  final TextEditingController controller;
  final List<String> history;
  @override
  State<HistorySection> createState() => _HistorySectionState();
}

class _HistorySectionState extends State<HistorySection> {
  @override
  Widget build(BuildContext context) {
    if (widget.history.isEmpty) {
      return const SizedBox();
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: widget.history.map((city) {
        return ActionChip(
          avatar: const Icon(Icons.history, size: 16),
          label: Text(city),
          onPressed: () {
            widget.controller.value = TextEditingValue(
              text: city,
              selection: TextSelection.collapsed(offset: city.length),
            );

            context.read<WeatherCubitCubit>().hideHistory();
            context.read<WeatherCubitCubit>().getWeather(city);
          },
        );
      }).toList(),
    );
  }
}
