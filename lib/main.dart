import 'package:flutter/material.dart';
import 'package:marcato/theme/theme_color.dart';

import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    _onCreate();

    return _buildWidget(context);
  }
}

void _onCreate() {

}

Widget _buildWidget(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: currentThemeData,
    debugShowCheckedModeBanner: false,
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
  );
}