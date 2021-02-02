import 'package:flutter/material.dart';
import 'package:flutterApp/onboading/BoadingHome.dart';
import 'package:flutterApp/sliver-demo/SliverHome.dart';

class Routes {
  static final pageNames = [
    RouteInfo(name: "OnBoarding"),
    RouteInfo(name: "SliverPage")
  ];
  static final routes = {
    "/SliverPage": (context) => SliverHome(),
    "/OnBoarding": (context) => HomeBoardingApp(),
  };
}

class RouteInfo {
  String name;

  RouteInfo({this.name});

  get path => "/$name";
}
