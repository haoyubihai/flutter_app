import 'package:flutter/cupertino.dart';

class ListPage2 extends StatelessWidget{

  List<Widget> _getDatas(int size){

    List<Widget> list = new List();

    for(int i = 0;i<size;i++){
      list.add(Text("data$i"));
    }

    return list;
  }
  @override
  Widget build(BuildContext context) {
    return ListView(children: _getDatas(30),);
  }

}