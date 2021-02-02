import 'package:flutter/material.dart';
import 'package:flutterApp/datas/Data.dart';

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
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    child: Image.network(
                      cars[index].imgUrl,
                      fit: BoxFit.cover,
                    ),
                  );
                },
                childCount: cars.length,
              ),
            ),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(12.0),
                    elevation: 14.0,
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
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
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
          ),
        ],
      ),
    );
  }
}
