import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Person"),),
      body: Center(child: Text("Person"),),
    );
  }

}