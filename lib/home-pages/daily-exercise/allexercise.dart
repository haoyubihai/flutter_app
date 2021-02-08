import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/daily-exercise/DaliyConstant.dart';
import 'package:flutterApp/home-pages/daily-exercise/search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExecirsePage extends StatefulWidget {
  @override
  _ExecirsePageState createState() => _ExecirsePageState();
}

class _ExecirsePageState extends State<ExecirsePage> {

  getCards(){
    var list = new List<PlayCardWidget>();
    for(int i=1; i<=6;i++){
      list.add(PlayCardWidget(
        title: "Session 0$i",
        isActive: i==1,
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(
            color: kdBlueLightColor,
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                    "assets/images/daily-exercise/meditation_bg.png")),
          ),
        ),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Meditation",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 28),
              ),
              SizedBox(
                height: 20,
              ),
              Text("3-10 MIN Course", style: TextStyle(color: Colors.black)),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * .6,
                child: Text(
                    "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w100)),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: size.width * .55,
                child: SearchWidget(),
              ),
              SizedBox(height: 30,),
              Flexible(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 15,
                    shrinkWrap: true,
                    children: getCards(),
                  )),
              SizedBox(height: 15,),
              Text(
                "Meditation",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(
                height: 90,
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(
                    color: kdShadowColor,
                    offset: Offset(0,17),
                    blurRadius: 23,
                    spreadRadius: -23,
                  )],
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons/daliy-exercise/Meditation_women_small.svg"),
                    SizedBox(width: 20,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Text("Basics 2" ,style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("Start your deepen you practice" ,style: TextStyle(fontWeight: FontWeight.w100),),
                        Spacer()
                      ],
                    )),
                    Padding(padding: EdgeInsets.only(right: 10,top: 10),child: Icon(Icons.lock),)
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}

class PlayCardWidget extends StatelessWidget {

  final bool isActive;
  final String title;

  const PlayCardWidget({
    Key key,
    this.isActive=false,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(

      child: InkWell(

        child: ClipRRect(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: kdShadowColor,
                    offset: Offset(0, 17),
                    spreadRadius: 23,
                    blurRadius: 17)
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(isActive?Icons.play_circle_filled:Icons.play_circle_outline,
                  color: kdTextColor,
                  size: 48,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      color: Colors.transparent,
    );
  }
}
