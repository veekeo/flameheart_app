

//// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

// ignore_for_file: use_key_in_widget_constructors

import 'package:flameheart/screens/intro/intro_screen.dart';


import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flameheart',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroScreen(),

    );
  }
}

