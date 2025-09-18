import 'package:flutter/material.dart';
import 'package:tourist_side_app/Pages/homepage.dart';
import 'package:tourist_side_app/constants/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      home: MyHomePage(),
    );
  }
}