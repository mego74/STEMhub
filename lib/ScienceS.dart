import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/search_bar.dart';
import 'package:untitled7/sciencequizes/quiz1/quiz1.dart';
import 'package:untitled7/sciencequizes/quiz2/quiz2.dart';
import 'package:untitled7/sciencequizes/quiz3/quiz3.dart';
import 'package:untitled7/sciencequizes/quiz4/quiz4.dart';
import 'package:untitled7/sciencequizes/quiz5/quiz5.dart';
import 'package:untitled7/sciencequizes/quiz6/quiz6.dart';
import 'package:untitled7/sciencequizes/quiz7/quiz7.dart';
import 'package:untitled7/sciencequizes/quiz8/quiz8.dart';
import 'package:untitled7/sciencequizes/quiz9/quiz9.dart';
import 'package:untitled7/sciencequizes/quiz10/quiz10.dart';
import 'package:untitled7/sciencequizes/quiz11/quiz11.dart';
import 'package:untitled7/sciencequizes/quiz12/quiz12.dart';
import 'package:untitled7/sciencequizes/quiz13/quiz13.dart';
import 'package:untitled7/sciencequizes/quiz14/quiz14.dart';
import 'package:untitled7/sciencequizes/quiz15/quiz15.dart';
import 'package:untitled7/sciencequizes/quiz16/quiz16.dart';
import 'package:untitled7/sciencequizes/quiz17/quiz17.dart';
import 'package:untitled7/sciencequizes/quiz18/quiz18.dart';
import 'package:untitled7/PdfS/pdf5.dart';
import 'package:untitled7/PdfS/pdf6.dart';
import 'package:untitled7/PdfS/pdf7.dart';
import 'package:untitled7/finaltests/sciencetest/quizSC.dart';


class ScienceS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/3869210.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Science",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "60-90 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                      child: Text(
                        "Science is nothing but perception.",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SeassionCard(
                          seassionName: " Types of\n reactions",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz1();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Analytical\nChemistry",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz2();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "General\nKnowledge",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz3();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Astronomy",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz4();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Force",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz5();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Motion",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz6();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Biological\nSystems I",
                          press: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Quiz7();
                            }),
                          );},
                        ),
                        SeassionCard(
                          seassionName: "Biological\nSystems II",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz8();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Brain\nNervous\nSystem",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz9();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Cell\nStructure",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz10();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Photosyn-\nthesis",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz11();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Mirrors\n&Lenses",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz12();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Mixtures\n&Solutions",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz13();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Metals",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz14();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Atmos-\nphere",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz15();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Ecology",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz16();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Genetics",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz17();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionName: "Cell\nDivision",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Quiz18();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "References & Books",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Science Revision 1",
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text("Start studying Science! (English Language)")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return PdF5();
                                  }),
                                );
                              },
                              child: Text("Open"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Science Revision 2",
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text("Start studying Science! (English Language)")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return PdF6();
                                  }),
                                );
                              },
                              child: Text("Open"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Science Revision 3",
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text("Start studying Science! (Arabic Language)")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return PdF7();
                                  }),
                                );
                              },
                              child: Text("Open"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Final Test",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Science Final Quiz",
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text("It contains 25 questions like the actual Science Test.")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return QuizSC();
                                  }),
                                );
                              },
                              child: Text("Start"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Video References",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Coming SOON!",
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text("Coming SOON!")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {},
                              child: Text("Start"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final String seassionName;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.seassionName,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$seassionName",
                      style: TextStyle( fontSize: 13.0,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF222B45),
                    ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}