import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(child: Column(

      children: [
        Row(
          children: [
            Expanded(flex: 1,
                child: Container(
                  height: 100.0,
                  color: Colors.red,
                ))
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: Container(color: Colors.cyanAccent, height: 180.0,),flex: 2,),
            SizedBox(width: 10,),
            Expanded(child: Container(
              height: 180,
              child:ListView(
                children: [
                  Container(color: Colors.cyanAccent, height: 85.0,),
                  SizedBox(height: 10.0,width: 10,),
                  Container(color: Colors.cyanAccent, height: 85.0,)
                ],
              ) ,),flex: 1,)


          ],
        )
      ],
    ),padding: EdgeInsets.all(15),);
  }
}