import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testing/AppColor.dart';

class Sebhatab extends StatefulWidget{

  @override
  State<Sebhatab> createState() => _sebhaState();
}

class _sebhaState extends State<Sebhatab> {
  @override
  int index=0;
  int tasbeehcount=0;
  double angle=0;
  List<String>alltasbeh=[
    "سبحان الله",
    "الحمدالله",
    "الله اكبر",
    "لا اله الا الله",
  ];

  Widget build(BuildContext context) {


    double size1=MediaQuery.of(context).size.width;
    double size2=MediaQuery.of(context).size.height;
    return Stack(

      children: [
        Image.asset("assets/images/Backgroundsebha.png",
          width: double.infinity,
          height: double.infinity,
        ),
    Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children : [
      Row(        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset("assets/images/logo.png",alignment: Alignment.topCenter,),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("سبح اسم ربك الاعلي",style: TextStyle(fontSize:30,color: AppColor.whitecolor ),),
        ],
      ),
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Padding(padding:EdgeInsets.only(left: size1 *0.099,),
        child: Image.asset("assets/images/headofsebha.png",))]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          InkWell(
                  onTap: (){
                    increment();
                  },
                  child: Stack(alignment: Alignment.center,
                    children: [
                      Text(alltasbeh[index],style: TextStyle(color: Colors.white,fontSize: 30),),
                      Transform.rotate(
                        angle: angle,
                        child: Image.asset("assets/images/SebhaBody 1.png",height:size2*0.3,width:size1*1,)),
                  ])),

        ],),
    ],)
      ],
    );
  }

  void increment() {
    angle+= 360/33;
    tasbeehcount++;
    if (tasbeehcount%33==0){
      index++;
    }
    if(index==alltasbeh.length){
      index=0;
      tasbeehcount=0;
    }

    setState(() {

    });
  }
}