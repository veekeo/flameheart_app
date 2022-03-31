//// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flameheart/google_sign_in.dart';
import 'package:flameheart/screens/intro/intro_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flameheart/screens/intro/main_screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return GoogleSignInProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flameheart',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: IntroScreen(),
   
      ),
    );
  }
}

// (FirebaseAuth.instance.currentUser != null)
//             ? MainPage()
//             : IntroScreen(),