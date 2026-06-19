part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

class LightThemeState extends ThemeState {}

class DarkThemeState extends ThemeState {}
