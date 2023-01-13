import 'package:flutter/material.dart';

Themes currentTheme = Themes.black;

MaterialColor get currentThemeMaterialColor =>
    _primarySwatchList[currentTheme.index];

ThemeData get currentThemeData => ThemeData(
  primarySwatch: currentThemeMaterialColor,
  scaffoldBackgroundColor: currentThemeMaterialColor.shade400,
  popupMenuTheme: PopupMenuThemeData(
    color: currentThemeMaterialColor,
    textStyle: const TextStyle(color: Colors.white), // TODO: only black theme
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color:
          currentThemeMaterialColor.shade50 // TODO: only black theme
        )
    )
  ),
  textTheme: const TextTheme(// TODO: only black theme
    bodyText1: TextStyle(color: Colors.black),
    bodyText2: TextStyle(color: Colors.white),
  )
);

enum Themes { black }

final List<MaterialColor> _primarySwatchList = [
  createMaterialColor(const Color(0xFF575757))
];

MaterialColor createMaterialColor(Color color) {
  List<double> strengths = [.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}
