// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flameheart/constants.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';


class IntroContent extends StatelessWidget {
  IntroContent(
      {required this.textTitle, required this.image,required this.textInfo});

  final String? textTitle, textInfo, image;
  final Duration initialDelay = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       DelayedDisplay(
         delay: initialDelay,
          child: Image.asset(
            image!,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, bottom: 5),
          child: DelayedDisplay(
            delay:  Duration(milliseconds: 900),
            child: Text(
              textTitle!,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Nunito-Bold',
                fontSize: 25,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, bottom: 5, right: 35),
          child: DelayedDisplay(
            delay: Duration(milliseconds: 1000),
            child: Text(
              textInfo!,
              style: TextStyle(
                color: kTextColor,
                fontFamily: 'Nunito-Regular',
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}