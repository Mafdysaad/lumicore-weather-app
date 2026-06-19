import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: const Color.fromARGB(255, 247, 237, 237),
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 247, 237, 237),
    ),
    textTheme: TextTheme(titleLarge: TextStyle(color: Color(0xff31507F))),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xff121212),
    cardColor: const Color(0xff1E1E1E),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff121212)),
    textTheme: TextTheme(titleLarge: TextStyle(color: Colors.white)),
  );
}
