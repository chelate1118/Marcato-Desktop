import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

@visibleForTesting
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
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
  );
}