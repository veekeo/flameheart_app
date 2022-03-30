// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flameheart/constants.dart';

import 'package:flameheart/utils/helper.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {

   final Function()? onTap;
   GradientButton({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: kGradientColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign up',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Nunito-Regular',
                fontSize: 16,
              ),
            ),
            addHorizontalSpace(5),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
