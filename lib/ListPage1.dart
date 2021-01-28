import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView(

      children: [
        Container(child: Text("图片",style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.w700 ),),padding: EdgeInsets.all(15.0),),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3849299870,82529265&fm=26&gp=0.jpg",fit: BoxFit.cover,),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3849299870,82529265&fm=26&gp=0.jpg",fit: BoxFit.cover,),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3849299870,82529265&fm=26&gp=0.jpg",fit: BoxFit.cover,),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3849299870,82529265&fm=26&gp=0.jpg",fit: BoxFit.cover,),
      ],
      scrollDirection:Axis.horizontal ,
    );
  }

}