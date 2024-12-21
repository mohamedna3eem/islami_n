import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  static const  String routename="SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //كود الكومنت ده مش عارف مشتغلش لي
  // void initstate(){
  //   super.initState();
  //   Timer(
  //     Duration(seconds: 5),
  //       ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),)),
  //   );
  //
  // }
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          width: double.infinity,
          child: Image.asset("assets/images/splash_screen.png",fit: BoxFit.fill),
        )

    );




  }}
