import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 1.777778,
      child: Container(
        color: Colors.red,
      ),
    );
  }

}