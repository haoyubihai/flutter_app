import 'package:flutter/material.dart';
/// 主要联系InheritedWidget的使用，使用父类哪里继承来的属性 方法
class InheritPage extends StatefulWidget {
  @override
  _InheritPageState createState() => _InheritPageState();
}

class _InheritPageState extends State<InheritPage> {
  int _count = 0;

  void addOne() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
        count: _count,
        addOne: addOne,
        child: Scaffold(
          appBar: AppBar(
            title: Text("InheritedWidget Test"),
          ),
          body: Counter(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              addOne();
            },
          ),
        ));
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: ActionChip(
              label: Text("${CounterProvider.of(context).count}"),
              avatar: Icon(Icons.accessibility,size: 18.0,),
              tooltip: "+1",
              onPressed: () {
                CounterProvider.of(context).addOne();
              }),
        )
      ],
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback addOne;
  final Widget child;

  CounterProvider({this.count, this.addOne, this.child}) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: CounterProvider);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
