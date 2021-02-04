import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/iniherit-test/inherit_page.dart';
import 'package:flutterApp/home-pages/onboading/BoadingHome.dart';
import 'package:flutterApp/home-pages/sliver-demo/SliverHome.dart';

class Routes {
  static final pageNames = [
    RouteInfo(name: "InheritedWidget"),
    RouteInfo(name: "OnBoarding"),
    RouteInfo(name: "SliverPage")
  ];
  static final routes = {
    "/SliverPage": (context) => SliverHome(),
    "/OnBoarding": (context) => HomeBoardingApp(),
    "/InheritedWidget": (context) => InheritPage(),
  };
}

class RouteInfo {
  String name;

  RouteInfo({this.name});

  get path => "/$name";
}
