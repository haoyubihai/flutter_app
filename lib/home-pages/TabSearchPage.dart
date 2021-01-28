import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SearchPage.dart';

class TabSearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(
      child: Text("SEARCH"),
      onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchPage()) );
      },
    ),);
  }

}