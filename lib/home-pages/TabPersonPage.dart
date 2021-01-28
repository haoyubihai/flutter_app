import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PersonPage.dart';

class TabPersonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(
      child: Text("PERSON"),
      onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>PersonPage()) );
      },
    ),);
  }

}