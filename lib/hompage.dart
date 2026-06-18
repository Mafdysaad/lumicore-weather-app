import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(8),
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            splashColor: Colors.transparent,
            style: IconButton.styleFrom(splashFactory: NoSplash.splashFactory),
            onPressed: () {
              setState(() {
                isSearch = !isSearch;
              });
            },
            icon: Icon(Icons.search, size: 40),
          ),
        ),

        title: isSearch
            ? TextField(
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
              )
            : Text("Weather", style: Fontstyle.spacegrotesk_semiBold),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.light_mode, size: 40)),
        ],
      ),
    );
  }
}
