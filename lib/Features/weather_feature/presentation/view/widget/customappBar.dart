import 'package:flutter/material.dart';
import 'package:weather_app_assessment/Features/weather_feature/presentation/view/widget/customtextfiled.dart';
import 'package:weather_app_assessment/core/utils/fontstyle.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

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
          ? Customtextfield()
          : Text(
              "Weather",
              style: Fontstyle.spacegroteskSemibold.copyWith(
                fontSize: context.responsiveFont(30),
              ),
            ),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.light_mode, size: 40)),
      ],
    );
  }
}
