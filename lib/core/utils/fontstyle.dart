import 'package:flutter/material.dart';
import 'package:weather_app_assessment/core/theme/themecubit/theme_cubit.dart';
import 'package:weather_app_assessment/core/utils/responsive_size.dart';

class Fontstyle {
  static TextStyle spacegroteskSemibold(BuildContext context) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w600,
    letterSpacing: 1.5,
    color: Theme.of(context).textTheme.titleLarge!.color,
  );
  static TextStyle spacegroteskLight16(BuildContext context) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
    color: Theme.of(context).textTheme.titleLarge!.color,
    fontSize: getResponsivefontsize(context, fontsize: 16),
  );
  static TextStyle spacegroteskLight18(BuildContext context) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
    color: Theme.of(context).textTheme.titleLarge!.color,
    fontSize: getResponsivefontsize(context, fontsize: 18),
  );
  static TextStyle spacegroteskLight15(BuildContext context) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
    color: Theme.of(context).textTheme.titleLarge!.color,
    fontSize: getResponsivefontsize(context, fontsize: 15),
  );
  static TextStyle spacegroteskMedium28(BuildContext context) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
    color: Theme.of(context).textTheme.titleLarge!.color,
    fontSize: getResponsivefontsize(context, fontsize: 28),
  );
  static TextStyle spacegroteskMedium24(BuildContext context) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
    color: Theme.of(context).textTheme.titleLarge!.color,
    fontSize: getResponsivefontsize(context, fontsize: 24),
  );
  static TextStyle spacegroteskBold({
    required BuildContext context,
    required double fontsize,
  }) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w700,
    color: Theme.of(context).textTheme.titleLarge!.color,
    letterSpacing: 1.5,
    fontSize: getResponsivefontsize(context, fontsize: fontsize),
  );
  static TextStyle spacegroteskBold24(BuildContext context) => TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w700,
    color: Theme.of(context).textTheme.titleLarge!.color,
    fontSize: getResponsivefontsize(context, fontsize: 24),
    letterSpacing: 1.5,
  );
  static TextStyle spacegroteskReguler = TextStyle(
    fontFamily: 'spaceGrotesk',
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: Color(0xff31507F),
  );
}
