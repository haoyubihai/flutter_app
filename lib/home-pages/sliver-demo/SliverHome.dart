import 'package:flutter/material.dart';
import 'package:flutterApp/configs/Data.dart';

class SliverHome extends StatefulWidget {
  @override
  _SliverHomeState createState() => _SliverHomeState();
}

class _SliverHomeState extends State<SliverHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver Page"),
//            pinned: true,
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliver Page Demo",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              background: Image.network(
                "https://images.pexels.com/photos/6551925/pexels-photo-6551925.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGridPage(),
          )),
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListPage(),
          ))
        ],
      ),
    );
  }
}

class SliverListPage extends StatelessWidget {
  const SliverListPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              clipBehavior: Clip.antiAlias,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: ClipRect(
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        cars[index].imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cars[index].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            cars[index].desc,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                      top: 32,
                      left: 32,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        childCount: cars.length,
      ),
    );
  }
}

class SliverGridPage extends StatelessWidget {
  const SliverGridPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Material(
            child: Container(
              child: Image.network(
                cars[index].imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            borderRadius: BorderRadius.circular(12.0),
            clipBehavior: Clip.antiAlias,
          );
        },
        childCount: cars.length,
      ),
    );
  }
}
