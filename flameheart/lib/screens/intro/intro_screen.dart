// ignore_for_file: use_key_in_widget_constructors

import 'package:flameheart/components/intro_body.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroBody(),
    );
  }
}