import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/hompage.dart';

import 'package:weather_app_assessment/core/service_locator/service_locator.dart';
import 'package:weather_app_assessment/core/theme/app_theme.dart';
import 'package:weather_app_assessment/core/theme/themecubit/theme_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),

      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            theme: AppTheme.lightTheme,
            home: HomePage(),
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
