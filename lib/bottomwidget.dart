import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  String text;
  String imagename;
  BottomWidget({required this.text,required this.imagename  });
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Scaffold(backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(label: text,icon:Image.asset("assets/images/$imagename.png") ,)
          ],
        ),

      ),

    ],
    );
    
  }
}
