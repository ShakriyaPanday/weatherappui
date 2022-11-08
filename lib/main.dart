import 'package:flutter/material.dart';
import 'package:weatherapp/pages/homepage.dart';
import 'package:weatherapp/ulis/places.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherUi',
      home: HomePage(),
    );
  }
}
