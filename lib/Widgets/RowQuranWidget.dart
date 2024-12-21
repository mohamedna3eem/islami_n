import 'package:flutter/cupertino.dart';

import '../AppColor.dart';

class RowQuranWidget extends StatelessWidget {
int? text;
String? Suranameen;
String? ayanumber;
String? Suranamear;

RowQuranWidget({required this.text , required this.Suranameen,required this.ayanumber, required this.Suranamear});
  @override
  Widget build(BuildContext context) {
    return
      Container(child:
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(alignment: Alignment.center,
          children: [
            Image(image: AssetImage("assets/images/numbervector.png")),
            Text("$text",
              style: TextStyle(fontSize: 15,color: AppColor.whitecolor,fontWeight: FontWeight.bold),),
          ],
        ),
        Column(children: [
          Text("$Suranameen",  style: TextStyle(fontSize: 15,color: AppColor.whitecolor,)),
          SizedBox(height: 5,),
          Text("$ayanumber verses",  style: TextStyle(fontSize: 15,color: AppColor.whitecolor,)),
        ],),
        Text("$Suranamear", style: TextStyle(fontSize: 15,color: AppColor.whitecolor,))

      ],
    ));
  }
}
