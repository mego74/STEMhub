import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/search_bar.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(Updates());

class Updates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STEMhub',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              // Here the height of the container is 45% of our total height
              height: size.height * 1.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/ques.png"),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(
                      " STEMhub",
                      style: TextStyle( fontSize: 40.0,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFF8F8F8),
                      ),
                    ),
                    SearchBar(),
                    SingleChildScrollView(
                      child : Column(
                        children: <Widget>[
                          Text("Updates", textAlign: TextAlign.center, style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Cairo",
                              color: Colors.white
                          ),
                          ),
                          Text(""),
                          Text("You can find STEM enrollment conditions from the following button:\n :يمكنك معرفة شروط الالتحاق بمدارس ستيم من الزر التالي",
                            textAlign: TextAlign.center,
                             style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFF8F8F8),
                            ),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black)
                            ),
                            color: Colors.cyan,
                            child: Text("Press here - اضغط هنا"),
                            onPressed: () {
                              openurl3();
                            },
                          ),
                          Text(''),
                          Text(''),
                          Text("You can find STEM progress documents from the following button:\n :يمكنك معرفة مستندات التقدم لمدارس ستيم  من الزر التالي",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFF8F8F8),
                            ),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black)
                            ),
                            color: Colors.cyan,
                            child: Text("Press here - اضغط هنا"),
                            onPressed: () {
                              openurl2();
                            },
                          ),
                          Text(''),
                          Text(''),
                          Text("You can follow the Ministry's website for STEM from the following button:\n :يمكنك متابعة موقع الوزارة الخاص بمدارس ستيم من الزر التالي",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFF8F8F8),
                            ),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black)
                            ),
                            color: Colors.cyan,
                            child: Text("Press here - اضغط هنا"),
                            onPressed: () {
                              openurl();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  openurl(){
    String url1="http://moe.gov.eg/stem/";
    launch(url1);
  }
  openurl2(){
    String url2="http://emis.gov.eg/Site%20Content//pdf/2019/STEM/steam2019-2020.pdf";
    launch(url2);
  }
  openurl3(){
    String url3="http://moe.gov.eg/stem/doc/STEM_19.pdf";
    launch(url3);
  }
}
