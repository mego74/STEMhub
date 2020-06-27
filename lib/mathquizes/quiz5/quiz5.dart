import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz5/result5.dart';
import 'package:untitled7/mathquizes/quiz5/quizzz5.dart';



void main() => runApp(Quiz5());

class Quiz5 extends StatelessWidget {
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

      'questionText': 'In the following figure which of the following statements is true?',
      'image':'assets/images/triangle1.png',
      'answers': [
        {'text': 'AB = BD', 'score': 0},
        {'text': 'BC + CD', 'score': 0},
        {'text': 'AC = CD', 'score': 1},
        {'text': 'AD < CD', 'score': 0}
      ]
    }, {
      'questionText': 'In the adjoining figure AB, EF and CD are parallel lines. Given that GE = 5 cm, GC = 10 cm and DC = 18 cm, then EF is equal to',
      'image':'assets/images/triangle2.png',
      'answers': [
        {'text': '11 cm', 'score': 0},
        {'text': '9 cm', 'score': 1},
        {'text': '6 cm', 'score': 0},
        {'text': '5 cm', 'score':0}
      ]
    }, {
      'questionText': 'Find the value of x. The diagram is not to scale',
      'image':'assets/images/triangle3.png',
      'answers': [
        {'text': '32', 'score': 0},
        {'text': '50', 'score': 0},
        {'text': '64', 'score': 1},
        {'text': '80', 'score': 0}
      ]
    },{
      'questionText': 'Points B, D, and F are midpoints of the sides of triangle ACE, EC = 30 and DF = 23. Find AC',
      'image':'assets/images/triangle4.png',
      'answers': [
        {'text': '30', 'score': 0},
        {'text': '11.5', 'score': 0},
        {'text': '60', 'score': 0},
        {'text': '46', 'score': 1}
      ]
    },{
      'questionText': 'Q is equidistant from ∠TSR the sides of Find the value of x. The diagram is not to scale.',
      'image':'assets/images/triangle5.png',
      'answers': [
        {'text': '27', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '15', 'score': 0},
        {'text': '30', 'score': 0}
      ]
    }, {
      'questionText': 'The angles of a triangle are (x + 5)°, (2x - 3)° and (3x + 4)°. Then the value of x is?',
      'image':'',
      'answers': [
        {'text': '30', 'score': 0},
        {'text': '31', 'score': 0},
        {'text': '28', 'score': 0},
        {'text': '29', 'score': 1}
      ]
    },
    {
      'questionText': 'In triangle PQR, QR is less than twice PQ by 2 cm. PR exceeds PQ by 10 cm. The perimeter is 40 cm. The length of the smallest side of the triangle PQR is',
      'image':'',
      'answers': [
        {'text': '6 cm', 'score': 0},
        {'text': '7 cm', 'score': 0},
        {'text': '8 cm', 'score': 1},
        {'text': '10 cm', 'score': 0}
      ]
    },
    {
      'questionText': 'In a triangle ABC, the internal bisector of the angle A meets BC at D. If AB = 4, AC = 3 and ∠A = 60°, then length of AD is',
      'image':'',
      'answers': [
        {'text': '2√3', 'score': 0},
        {'text': '12√3/7', 'score': 1},
        {'text': '15√3/8', 'score': 0},
        {'text': '6√3/7', 'score': 0}
      ]
    },
    {
      'questionText': 'Using the Midpoint Theorem, what is the relation of the third side of a triangle to the line segment that joins the other two sides at the midpoints?',
      'image':'',
      'answers': [
        {'text': 'The third side is double the length of the line segment connecting at the midpoints of the other two sides', 'score': 1},
        {'text': 'The third side is one-half the length of the line segment connecting at the midpoints of the other two sides', 'score': 0},
        {'text': 'The third side is equal to the length of the line segment connecting at the midpoints of the other two sides', 'score': 0},
        {'text': 'The third side is triple the length of the line segment connecting at the midpoints of the other two sides', 'score': 0}
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
                    " Triangles",
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