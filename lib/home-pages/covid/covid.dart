import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/covid/constant.dart';
import 'package:flutterApp/home-pages/covid/header.dart';
import 'package:flutterApp/home-pages/covid/infoscreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CovidHomePage extends StatefulWidget {
  @override
  _CovidHomePageState createState() => _CovidHomePageState();
}

class _CovidHomePageState extends State<CovidHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid-19"),
      ),
      body: SingleChildScrollView(
        child: CovidScreen(),
      ),
    );
  }
}

class CovidScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(image: "assets/icons/Drcorona.svg",titleTop: "All you need",titleBottom: "is stay at home",),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Color(0xFFE5E5E5)),
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/maps-and-flags.svg"),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: DropdownButton(
                  value: "Indonesia",
                  underline: SizedBox(),
                  icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                  isExpanded: true,
                  items: listItems(),
                  onChanged: (value) {},
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Case Update\n", style: kTitleTextstyle),
                        TextSpan(
                            text: "Newest update March 28",
                            style: TextStyle(color: kTextLightColor)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See details",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 30,
                      color: kShadowColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CovidCounter(number: 1046,title:"Infected",color: kInfectedColor,),
                    CovidCounter(number: 87,title:"Deaths",color: kDeathColor,),
                    CovidCounter(number: 46,title:"Recovered",color: kRecovercolor,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Spread of Virus",style: kTitleTextstyle,),
                  Text("See details",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.w600),),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20),
                height: 178,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: kShadowColor,offset: Offset(0,10),blurRadius: 30)]
                ),
                child: Image.asset("assets/images/covid-19/map.png",fit: BoxFit.contain,),
              ),
            ],
          ),
        )
      ],
    );
  }
}



class CovidCounter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;

  const CovidCounter({
    Key key,
    this.number,
    this.color,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: color,
                  width: 2,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$number",
          style: TextStyle(fontSize: 40, color: color),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}

listItems() {
  return ["Indonesia", "Bangladesh", "United States", "Japan"]
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(value: value, child: Text(value));
  }).toList();
}


