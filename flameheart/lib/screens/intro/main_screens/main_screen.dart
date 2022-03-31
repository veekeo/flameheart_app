// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  void getCurrentUser() async{
    try{
         final user = await _auth.currentUser!;
    if(user != null){
      loggedInUser = user;
    }
    }catch(e){
      print(e.toString());
    }
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(child: Text('main page')),
    );
  }
}