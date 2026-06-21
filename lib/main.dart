import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/data_sources/RemoteData/remot_data.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo.dart';
import 'package:weather_app_assessment/Features/weather_feature/domain/weather_repo_implamin.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/hompage.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';
import 'package:weather_app_assessment/core/theme/app_theme.dart';
import 'package:weather_app_assessment/core/theme/themecubit/theme_cubit.dart';
import 'package:weather_app_assessment/core/utils/api_service.dart';

Future<void> main() async {
  await dotenv.load();
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
            home: Hompage(),
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
