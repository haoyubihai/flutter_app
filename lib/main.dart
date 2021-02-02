import 'package:flutter/material.dart';
import 'package:flutterApp/ExpandPage.dart';
import 'package:flutterApp/ListPage3.dart';
import 'package:flutterApp/StatefulPage.dart';
import 'package:flutterApp/home-pages/HomePage.dart';
import 'package:flutterApp/home-pages/PersonPage.dart';
import 'package:flutterApp/home-pages/SearchPage.dart';
import 'package:flutterApp/home-pages/TabHomePage.dart';
import 'package:flutterApp/home-pages/TabPersonPage.dart';
import 'package:flutterApp/home-pages/TabSearchPage.dart';
import 'package:flutterApp/sliver-demo/SliverHome.dart';

import 'AspectRatioPage.dart';
import 'onboading/HomeBoading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomeBoardingApp(),
      home: SliverHome(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;

  List<Widget> _pages = [TabHomePage(), TabSearchPage(), TabPersonPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "搜索"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心"),
        ],
      ),
    );
  }
}

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints(maxWidth: 300.0, maxHeight: 300.0),
        alignment: Alignment.center,
        child: Text("hello Dart this is Dart flutter project ,hello !"),
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          border: Border.all(
            width: 20.0,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
