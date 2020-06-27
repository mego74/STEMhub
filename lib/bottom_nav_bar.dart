import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/main.dart';
import 'about.dart';
import 'updates.dart';
import 'aboutus/aboutus.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Updates",
            svgScr: "assets/icons/update (2).svg",
            isActive: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Updates();
                }),
              );
            },
          ),
          BottomNavItem(
            title: "Home",
            svgScr: "assets/icons/mego5 (1).svg",
            isActive: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return MyApp();
                }),
              );
            },
          ),
          BottomNavItem(
            title: "School FAQs",
            svgScr: "assets/icons/you.svg",
            isActive: false,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About();
                }),
              );
            },
          ),
          BottomNavItem(
            title: "About us",
            svgScr: "assets/icons/mego6.svg",
            isActive: false,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutUs();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}