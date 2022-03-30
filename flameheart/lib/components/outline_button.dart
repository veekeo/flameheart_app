// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flameheart/utils/helper.dart';
import 'package:flutter/material.dart';

class OulineButtonContainer extends StatelessWidget {
  final String image, text;
  final Function()? onPressed;
OulineButtonContainer({required this.image, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              
              image,
              width: 25,
              height: 25,
            ),
            addHorizontalSpace(5),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Nunito-Regular',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}