// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flameheart/screens/intro/auth_screen/signup.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
         
            return Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasData){
         
            return MainPage();
          }else if(snapshot.hasError){
            return Center(child: Text('Something went wrong!'),);
          
          }else{
             return SignUpScreen();
          
          }
     
        },
      ),
    );
  }
}


class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(child: Text('main page')),
    );
  }
}