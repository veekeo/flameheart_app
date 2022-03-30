// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OulineButtonContainer extends StatelessWidget {
  final String image, text;

OulineButtonContainer({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
       
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 30, top: 15, bottom: 15),
            child: Image.asset(
              image,
            ),
          ),
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
    );
  }
}