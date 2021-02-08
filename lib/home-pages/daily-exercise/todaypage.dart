import 'package:flutter/material.dart';
import 'package:flutterApp/home-pages/daily-exercise/DaliyConstant.dart';
import 'package:flutterApp/home-pages/daily-exercise/search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodayPage extends StatelessWidget {

  onTap() {

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                    "assets/images/daily-exercise/undraw_pilates_gpdb.png")),
          ),
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: ()=>{ Navigator.pop(context)},
                    child: Container(
                      alignment: Alignment.center,
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                      child: SvgPicture.asset(
                          "assets/icons/daliy-exercise/menu.svg"),
                    ),
                  ),
                ),
                Text(
                  "Grood Morning\nShishir",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 28),
                ),
                SizedBox(
                  height: 35,
                ),
                SearchWidget(),
                SizedBox(
                  height: 50,
                ),
                Flexible(
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      shrinkWrap: true,
                      children: [
                        InfoCard(
                          image: "assets/icons/daliy-exercise/Hamburger.svg",
                          name: "Diet\nRecommendation",
                          onTap: onTap(),
                        ),
                        InfoCard(
                          image: "assets/icons/daliy-exercise/Excrecises.svg",
                          name: "Kegel Exercises",
                          onTap: onTap(),
                        ),
                        InfoCard(
                          image: "assets/icons/daliy-exercise/Meditation.svg",
                          name: "Meditation",
                          onTap: onTap(),
                        ),
                        InfoCard(
                          image: "assets/icons/daliy-exercise/yoga.svg",
                          name: "Yoga",
                          onTap: onTap(),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String image;
  final String name;
  final Function onTap;

  const InfoCard({Key key, this.image, this.name, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: kdShadowColor,
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23)
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  SvgPicture.asset(image),
                  Spacer(),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  Function(int index) onTabIndex;

  BottomNavBar({this.onTabIndex});

  @override
  _BottomNavBarState createState() =>
      _BottomNavBarState(onTabIndex: onTabIndex);
}

class _BottomNavBarState extends State<BottomNavBar> {
  Function(int index) onTabIndex;

  _BottomNavBarState({this.onTabIndex});

  int currentIndex = 0;

  onPress(int index) {
    currentIndex = index;
    onTabIndex(currentIndex);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: NavigationBarItem(
              image: "assets/icons/daliy-exercise/calendar.svg",
              title: "Today",
              isActive: currentIndex == 0,
              onTab: () => onPress(0),
            ),
          ),
          Expanded(
            child: NavigationBarItem(
              image: "assets/icons/daliy-exercise/gym.svg",
              title: "All Exercises",
              isActive: currentIndex == 1,
              onTab: () => onPress(1),
            ),
          ),
          Expanded(
            child: NavigationBarItem(
              image: "assets/icons/daliy-exercise/Settings.svg",
              title: "Setting",
              isActive: currentIndex == 2,
              onTab: () => onPress(2),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  final Function onTab;

  NavigationBarItem(
      {Key key, this.image, this.title, this.isActive = false, this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            color: isActive ? kdActiveIconColor : kdTextColor,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kdActiveIconColor : kdTextColor),
          )
        ],
      ),
      onTap: onTab,
    );
  }
}
