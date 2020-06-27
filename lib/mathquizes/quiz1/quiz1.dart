import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz1/result1.dart';
import 'package:untitled7/mathquizes/quiz1/quizzz.dart';

void main() => runApp(Quiz1());

class Quiz1 extends StatelessWidget {
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
class HomeScreen extends StatefulWidget {
  @override
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'The ratio between the length and the breadth of a rectangular park is 3 : 2. If a man cycling along the boundary of the park at the speed of 12 km/hr completes one round in 8 minutes, then the area of the park (in sq. m) is',
      'answers': [
        {'text': '15360 m^2', 'score': 0},
        {'text': '153600 m^2', 'score': 1},
        {'text': '30720 m^2', 'score': 0},
        {'text': '307200 m^2', 'score': 0}
      ]
    }, {
      'questionText': 'The ratio between the perimeter and the breadth of a rectangle is 5 : 1. If the area of the rectangle is 216 sq. cm, what is the length of the rectangle?',
      'answers': [
        {'text': '16 cm', 'score': 0},
        {'text': '24 cm', 'score': 0},
        {'text': '18 cm', 'score': 1},
        {'text': 'Data inadequate', 'score':0}
      ]
    }, {
      'questionText': 'A rectangular park 60 m long and 40 m wide has two concrete crossroads running in the middle of the park and rest of the park has been used as a lawn. If the area of the lawn is 2109 sq. m, then what is the width of the road?',
      'answers': [
        {'text': '3 m', 'score': 1},
        {'text': '5.82 m', 'score': 0},
        {'text': '2.91 m', 'score': 0},
        {'text': 'None of these', 'score': 0}
      ]
    },{
      'questionText': 'The perimeter of an isosceles triangle is equal to 14 cm and the lateral side is to the base in the ratio 5 : 4. The area of the triangle is',
      'answers': [
        {'text': '21 cm^2', 'score': 0},
        {'text': '0.5√21 cm^2', 'score': 0},
        {'text': '2√21 cm^2', 'score': 1},
        {'text': '1.5√21 cm^2', 'score': 0}
      ]
    },{
      'questionText': 'A diagonal of a rhombus is 6 cm. If its area is 24 cm2 then the length of each side of the rhombus is',
      'answers': [
        {'text': '6 cm', 'score': 0},
        {'text': '5 cm', 'score': 1},
        {'text': '8 cm', 'score': 0},
        {'text': '7 cm', 'score': 0}
      ]
    }, {
      'questionText': 'The area of the largest circle, that can be drawn inside a rectangle with side 18 cm by 14 cm, is',
      'answers': [
        {'text': '49 cm^2', 'score': 0},
        {'text': '154 cm^2', 'score': 1},
        {'text': '378 cm^2', 'score': 0},
        {'text': '1078 cm^2', 'score': 0}
      ]
    },
    {
      'questionText': 'A rectangular field has dimensions 25 m by 15 m. Two mutually perpendicular passages, 2 m wide have been left in its central part and grass has been grown in rest of the field. The area (in sq. meters) under the grass is',
      'answers': [
        {'text': '375 m^2', 'score': 0},
        {'text': '300 m^2', 'score': 0},
        {'text': '295 m^2', 'score': 0},
        {'text': '299 m^2', 'score': 1}
      ]
    },
    {
      'questionText': 'The cost of papering the four walls of a room is 475 EGP. Each one of the length, breadth and height of another room is double that of this room. The cost of papering the walls of this new room is',
      'answers': [
        {'text': '712.50 EGP', 'score': 0},
        {'text': '950 EGP', 'score': 0},
        {'text': '1425 EGP', 'score': 0},
        {'text': '1900 EGP', 'score': 1}
      ]
    },
    {
      'questionText': 'The perimeter of a circular field and a square field are equal. If the area of the square field is 12100 m2, the area of the circular field will be',
      'answers': [
        {'text': '15200 m^2', 'score': 0},
        {'text': '15300 m^2', 'score': 0},
        {'text': '15400 m^2', 'score': 1},
        {'text': '15500 m^2', 'score': 0}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('_questionIndex:$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 1,
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
                    " Areas",
                    style: TextStyle( fontSize: 40.0,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFF8F8F8),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 0.3,
                      children: <Widget>[
                        _questionIndex < _questions.length
                            ? Quiz(
                            questions: _questions,
                            answerQuestions: _answerQuestions,
                            questionIndex: _questionIndex)
                            : Result(_totalScore, _resetQuiz),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}