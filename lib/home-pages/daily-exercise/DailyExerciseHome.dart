import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/HomePage.dart';
import 'package:flutterApp/home-pages/daily-exercise/DaliyConstant.dart';
import 'package:flutterApp/home-pages/daily-exercise/allexercise.dart';
import 'package:flutterApp/home-pages/daily-exercise/todaypage.dart';
import 'package:flutterApp/home-pages/sliver-demo/SliverHome.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// learn [https://github.com/abuanwar072/Meditation-App]
class DailyExerciseHome extends StatefulWidget {
  @override
  _DailyExerciseHomeState createState() {
    return _DailyExerciseHomeState();
  }
}

class _DailyExerciseHomeState extends State<DailyExerciseHome> {
  int currentIndex = 0;
  var currentPage = HomePage();

  onTabSelected(int index) {
    currentIndex = index;
    setState(() {});
  }

  Widget getCurrentPage() {

    if (currentIndex == 1) {
      return ExecirsePage();
    }
    return TodayPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: getCurrentPage(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabIndex: onTabSelected,
      ),
    );
  }
}
