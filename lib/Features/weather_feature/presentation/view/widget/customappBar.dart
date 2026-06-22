import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customtextfiled.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/history_section.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view_models/cubit/weather_cubit_cubit.dart';
import 'package:weather_app_assessment/core/theme/themecubit/theme_cubit.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';

class Customappbar extends StatefulWidget implements PreferredSizeWidget {
  const Customappbar({super.key});

  @override
  State<Customappbar> createState() => _CustomappbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}

class _CustomappbarState extends State<Customappbar> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return AppBar(
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
          ? Column(
              children: [
                Customtextfield(controller: textEditingController),
                HistorySection(
                  controller: textEditingController,
                  history: context.watch<WeatherCubitCubit>().history,
                ),
              ],
            )
          : Text("Weather", style: Fontstyle.spacegroteskSemibold(context)),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
          icon: context.watch<ThemeCubit>().state == ThemeMode.dark
              ? Icon(Icons.light_mode, size: 40)
              : Icon(Icons.dark_mode, size: 40),
        ),
      ],
    );
  }
}
