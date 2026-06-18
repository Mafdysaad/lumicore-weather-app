import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customappBar.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customtextfiled.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Customappbar());
  }
}
