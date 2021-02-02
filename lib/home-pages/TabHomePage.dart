import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/HomePage.dart';
import 'package:flutterApp/routes/routes.dart';

class TabHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(sliver: SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverList(delegate: SliverChildBuilderDelegate(
              (context,index){
                return Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: RaisedButton(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                    color: Theme.of(context).primaryColor,
                    child: Text(Routes.pageNames[index].name,style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.pushNamed(context, Routes.pageNames[index].path);
                    },
                  ),
                );
              },
            childCount: Routes.pageNames.length,
          ),
          ),
        ),)
      ],
    );
  }

}