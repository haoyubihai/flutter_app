import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return _stateFullState();
  }

}
class _stateFullState extends State{
  int data = 0;
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Column(
      children: [
        Text("$data"),
        RaisedButton(
          child: Text("button"),
            onPressed: (){setState(() {
          data++;
        });})
      ],
    ),
  );
  }

}