import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';

class Customtextfield extends StatefulWidget {
  const Customtextfield({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        context.read<WeatherCubitCubit>().showHistory();
      } else {
        context.read<WeatherCubitCubit>().hideHistory();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      onSubmitted: (name) {
        BlocProvider.of<WeatherCubitCubit>(context).getWeather(name);
        widget.controller.clear();
      },
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: widget.controller,
      decoration: InputDecoration(
        hintMaxLines: 1,
        isDense: true,
        fillColor: Color.fromARGB(77, 229, 220, 220),
        hintText: 'Enter city name',
        filled: true,
        hintStyle: TextStyle(fontSize: 18),
        contentPadding: EdgeInsets.symmetric(vertical: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          gapPadding: 10,
        ),
      ),
    );
  }
}
