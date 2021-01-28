import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        ListTile(title: Text("hello flutter"),
        leading: Icon(Icons.accessibility
        ,color: Colors.grey,size: 24.0,),
        trailing: Icon(Icons.hail),
        subtitle: Text("sub fultter"),),
        ListTile(
          leading: Container(
            decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(30.0)) ),
            child: Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3849299870,82529265&fm=26&gp=0.jpg"),
          ),
          title: Text("hello flutter"),
          subtitle: Text("sub fultter"),),
        ListTile(title: Text("hello flutter"),
          subtitle: Text("sub fultter"),),
        ListTile(title: Text("hello flutter"),
          subtitle: Text("sub fultter"),),
        ListTile(title: Text("hello flutter"),
          subtitle: Text("sub fultter"),)
      ],
    );
  }

}