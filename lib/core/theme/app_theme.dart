import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: const Color.fromARGB(255, 247, 237, 237),
    cardColor: Colors.white,
    hoverColor: const Color.fromARGB(255, 195, 193, 193),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 247, 237, 237),
    ),
    textTheme: TextTheme(titleLarge: TextStyle(color: Color(0xff31507F))),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xff121212),
    cardColor: const Color.fromARGB(255, 83, 82, 82),
    hoverColor: const Color.fromARGB(255, 244, 240, 240),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff121212)),
    textTheme: TextTheme(titleLarge: TextStyle(color: Colors.white)),
  );
}
