import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/covid/covid.dart';
import 'package:flutterApp/home-pages/daily-exercise/DailyExerciseHome.dart';
import 'package:flutterApp/home-pages/iniherit-test/inherit_page.dart';
import 'package:flutterApp/home-pages/onboading/BoadingHome.dart';
import 'package:flutterApp/home-pages/sliver-demo/SliverHome.dart';

class Routes {
  static final pageNames = [
    RouteInfo(name: "Daily-Exercise"),
    RouteInfo(name: "Covid-19"),
    RouteInfo(name: "InheritedWidget"),
    RouteInfo(name: "OnBoarding"),
    RouteInfo(name: "SliverPage")
  ];
  static final routes = {
    "/SliverPage": (context) => SliverHome(),
    "/OnBoarding": (context) => HomeBoardingApp(),
    "/InheritedWidget": (context) => InheritPage(),
    "/Covid-19": (context) => CovidHomePage(),
    "/Daily-Exercise": (context) => DailyExerciseHome(),
  };
}

class RouteInfo {
  String name;

  RouteInfo({this.name});

  get path => "/$name";
}
