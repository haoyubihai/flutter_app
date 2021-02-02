import 'package:flutter/material.dart';
import 'package:flutterApp/onboading/CardData.dart';
import 'package:flutterApp/onboading/page_indicator.dart';
import 'package:gradient_text/gradient_text.dart';

/// https://www.bilibili.com/video/BV1nE411i7Y2?t=5
class HomeBoardingApp extends StatefulWidget {
  @override
  _HomeBoardingAppState createState() => _HomeBoardingAppState();
}

class _HomeBoardingAppState extends State<HomeBoardingApp>
    with TickerProviderStateMixin {
  PageController _controller;
  int currentPage = 0;
  bool isLastPage = false;
  AnimationController _animationController;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: currentPage);
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boading page"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF485563), Color(0xFF293323C)],
              //渐变模式
              tileMode: TileMode.clamp,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            fit: StackFit.expand,
            children: [
              PageView.builder(
                  itemCount: pageList.length,
                  controller: _controller,
                  onPageChanged: (index) {
                    if (index == pageList.length - 1) {
                      isLastPage = true;

                      /// 开始执行ani
                      _animationController.forward();
                    } else {
                      isLastPage = false;

                      /// ani 复位
                      _animationController.reverse();
                    }
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          var page = pageList[index];
                          var delta;
                          var y = 1.0;
                          //todo 需要了解该算法原理
                          if (_controller.position.haveDimensions) {
                            /// 当前 page 占据屏幕的比例系数
                            delta = _controller.page - index;

                            /// 下一个 page 占据的系数
                            y = 1 - delta.abs().clamp(0.0, 1.0);
                          }

                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(page.imgUrl),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                height: 100.0,
                                child: Stack(
                                  children: [
                                    Opacity(
                                      opacity: 0.10,
                                      child: GradientText(
                                        page.title,
                                        gradient: LinearGradient(
                                          colors: page.titleGradient,
                                        ),
                                        style: TextStyle(
                                            letterSpacing: 1.0,
                                            fontFamily: 'Back',
                                            fontSize: 90),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 30.0, left: 22.0),
                                      child: GradientText(
                                        page.title,
                                        gradient: LinearGradient(
                                          colors: page.titleGradient,
                                        ),
                                        style: TextStyle(
                                            letterSpacing: 1.0,
                                            fontFamily: 'Back',
                                            fontSize: 70),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 34.0, top: 12.0),
                                child: Transform(
                                  child: Text(
                                    page.body,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: "Medium",
                                        color: Color(0xFF9B9B9B)),
                                  ),
                                  transform: Matrix4.translationValues(
                                      0, 50 * (1 - y), 0),
                                ),
                              ),
                            ],
                          );
                        });
                  }),
              Positioned(
                left: 30.0,
                bottom: 55.0,
                child: Container(
                  width: 160,
                  child: PageIndicator(currentPage, pageList.length),
                ),
              ),
              Positioned(
                  right: 30.0,
                  bottom: 30.0,
                  child: ScaleTransition(
                    child: isLastPage
                        ? FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            })
                        : Container(),
                    scale: _scaleAnimation,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
