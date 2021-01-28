import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/HomePage.dart';

class TabHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(
      child: Text("HOME"),
      onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()) );
      },
    ),);
  }

}