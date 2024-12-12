import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tabs_Widget/hadeath_tab.dart';
import 'Tabs_Widget/quran_tab.dart';
import 'Tabs_Widget/radio_tab.dart';
import 'Tabs_Widget/sebha_tab.dart';
import 'Tabs_Widget/timer_tab.dart';

class HomeScreen extends StatefulWidget {
  static const  String routename="Homescreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
List<Widget>ScreenTab=[
  Qurantab(),
  Hadeathtab(),
  Sebhatab(),
  Radiotab(),
  Timertab(),

];
 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/isamibg.png",width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
        ),
        Scaffold(//backgroundColor: Colors.transparent,

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex=index;

            setState(() {
            });
          } ,
          items: [
            BottomNavigationBarItem(
            icon:  BuildNavigationBar(index: 0,imagename:"quran" ),
              label:"quran",
              ),
            BottomNavigationBarItem(
              icon:  BuildNavigationBar(index: 1,imagename:"hadeath" ),
              label:"hadeath",
            ),
            BottomNavigationBarItem(
              icon:  BuildNavigationBar(index: 2,imagename:"sebha" ),
              label:"sebha",
            ),
            BottomNavigationBarItem(
              icon:  BuildNavigationBar(index: 3,imagename:"radio" ),
              label:"radio",
            ),
            BottomNavigationBarItem(
              icon:  BuildNavigationBar(index: 4,imagename:"timer" ),
              label:"timer",
            ),
          ],
        ),
     body:ScreenTab[selectedIndex],

        ),

      ],
    );

  }

  Widget BuildNavigationBar( {required int index,required String imagename}){
   return selectedIndex==index?
      Container(
            padding: EdgeInsets.symmetric(vertical: 6,horizontal: 20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(66),
        color: Color(0x99202020),
        ),
        child: ImageIcon(AssetImage("assets/images/$imagename.png")),
      )
       :
   ImageIcon(AssetImage("assets/images/$imagename.png"));
     }
}
