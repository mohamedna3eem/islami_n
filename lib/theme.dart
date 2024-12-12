import 'package:flutter/material.dart';
import 'package:islami_new/AppColor.dart';

class MyTheme{
 static final ThemeData theme=ThemeData(
   scaffoldBackgroundColor: Colors.transparent,

   bottomNavigationBarTheme: BottomNavigationBarThemeData(

     unselectedItemColor: Colors.black,
     backgroundColor: AppColor.primarycolor,
     type: BottomNavigationBarType.fixed,
     selectedItemColor: AppColor.whitecolor,


   )
  );
}