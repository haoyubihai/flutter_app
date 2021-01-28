import 'package:flutter/material.dart';
import 'package:flutterApp/ExpandPage.dart';
import 'package:flutterApp/ListPage3.dart';

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
      home: Scaffold(
        appBar: AppBar(title: Text("flutter"),),
        body: ExpandPage(),
      ),
    );
  }
}


class ContainerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        padding:EdgeInsets.all(20),
        constraints: BoxConstraints(maxWidth: 300.0,maxHeight: 300.0),
        alignment: Alignment.center,

        child: Text("hello Dart this is Dart flutter project ,hello !"),
        decoration:BoxDecoration(
          color: Colors.cyanAccent ,
          border: Border.all(
            width: 20.0,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ) ,
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
