
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, missing_return

import 'package:flameheart/components/gradient_button.dart';
import 'package:flameheart/constants.dart';
import 'package:flameheart/screens/intro/main_screens/home_screen.dart';
import 'package:flameheart/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:delayed_display/delayed_display.dart';


class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final Duration initialDelay = Duration(milliseconds: 300);
  final _formKey = GlobalKey<FormState>();

  bool isHidden = false;

  void toggleVisibility() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  String validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return '';
    }
  }

  validatePassword(value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: DelayedDisplay(
                        delay: initialDelay,
                        child: Icon(
                          LineIcons.arrowCircleLeft,
                          size: 35,
                        ),
                      ),
                    ),
                    addVerticalSpace(10),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 500),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito-Bold',
                          fontSize: 25,
                        ),
                      ),
                    ),
                    addVerticalSpace(10),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 800),
                      child: TextFormField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        style: TextStyle(
                          fontFamily: 'Nunito-Regular',
                          color: kTextColor,
                          fontSize: 16,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: kPrimaryColor,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              LineIcons.envelopeAlt,
                              size: 25,
                              color: kPrimaryColor,
                            ),
                          ),
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            fontFamily: 'Nunito-Regular',
                            color: kTextColor,
                            fontSize: 16,
                          ),
                          isDense: true,
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1),
                          ),
                        ),
                        validator: (value) => validateEmail(value),
                      ),
                    ),
                    addVerticalSpace(30),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 1000),
                      child: TextFormField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        style: TextStyle(
                          fontFamily: 'Nunito-Regular',
                          color: kTextColor,
                          fontSize: 16,
                        ),
                        obscureText: isHidden,
                        cursorColor: kPrimaryColor,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              toggleVisibility();
                            },
                            child: Icon(
                              isHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 20,
                              color: kPrimaryColor,
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              LineIcons.lock,
                              size: 25,
                              color: kPrimaryColor,
                            ),
                          ),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            fontFamily: 'Nunito-Regular',
                            color: kTextColor,
                            fontSize: 16,
                          ),
                          isDense: true,
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                          suffixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1),
                          ),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 6) {
                            return 'Enter min. 6 characters';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    addVerticalSpace(30),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 1200),
                      child: GradientButton(
                        onTap: () {
                          final isValidForm = _formKey.currentState!.validate();
                          if(isValidForm){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                return HomeScreen();
                            }));

                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DelayedDisplay(
                    delay: initialDelay,
                    child: Image.asset('assets/images/Send.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
