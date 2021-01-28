import 'package:flutter/cupertino.dart';

class ListPage3 extends StatelessWidget {
  List<Widget> list = new List();

  List<Widget> _getDatas(int size) {
    for (int i = 0; i < size; i++) {
      list.add(Text("data$i"));
    }

    return list;
  }

  ListPage3(){
    _getDatas(30);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
        itemBuilder:(context,index){
          return list[index];
        } );
  }
}
