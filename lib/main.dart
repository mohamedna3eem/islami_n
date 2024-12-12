import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_new/SplashScreen.dart';
import 'package:islami_new/theme.dart';

import 'Home_Screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen.routename,
      routes:
        {HomeScreen.routename:(context)=>HomeScreen(),
          SplashScreen.routename:(context)=>SplashScreen(),
        },
      themeMode: ThemeMode.dark,
      darkTheme: MyTheme.theme,
    );
  }



}