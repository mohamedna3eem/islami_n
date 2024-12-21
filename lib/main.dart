import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/theme.dart';

import 'Home_Screen.dart';
import 'SplashScreen.dart';

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