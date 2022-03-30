// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flameheart/components/gradient_button.dart';
import 'package:flameheart/components/intro_component.dart';
import 'package:flameheart/components/outline_button.dart';
import 'package:flameheart/constants.dart';
import 'package:flameheart/screens/intro/auth_screen/signup.dart';
import 'package:flameheart/utils/helper.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class IntroBody extends StatefulWidget {
  @override
  State<IntroBody> createState() => _IntroBodyState();
}

class _IntroBodyState extends State<IntroBody> {
  final Duration initialDelay = Duration(milliseconds: 500);
  int currentPage = 0;
  List<Map<String, String>> introData = [
    {
      'image': 'assets/images/Happy.png',
      'textTitle': 'Make someone \nhappy today',
      'textInfo':
          'Bring a smile to that face, make their day, \ndo that heart some good.'
    },
    {
      'image': 'assets/images/Suprise.png',
      'textTitle': 'Rekindle that \nlove',
      'textInfo': 'Revisit the beginning of that relationship.'
    },
    {
      'image': 'assets/images/Gifts.png',
      'textTitle': 'Let\'s help you with \nthe ideal gift',
      'textInfo':
          'Not sure of the right gift for him or her? \nwe\'ve got you covered.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
                itemCount: introData.length,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return IntroContent(
                    textTitle: introData[index]['textTitle'],
                    textInfo: introData[index]['textInfo'],
                    image: introData[index]['image'],
                  );
                }),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                addVerticalSpace(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Row(
                    children: List.generate(
                      introData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 10),
                  child: OulineButtonContainer(
                    onPressed: (){},
                    image: 'assets/images/google.png',
                    text: 'Continue with Google',
                  ),
                ),
              
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 10),
                  child: SignUpButtonWithEmail(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }));
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: currentPage == index
          ? BoxDecoration(
              gradient: kGradientColor,
              borderRadius: BorderRadius.circular(3),
            )
          : BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(3),
            ),
    );
  }
}







// class StepsContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
//       child: Container(
//         height: 20,
//         width: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           gradient: kGradientColor,
//         ),
//         child: Center(
//           child: Text(
//             '1 of 3',
//             style: TextStyle(
//               color: Colors.white,
//               fontFamily: 'Nunito-Regular',
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
