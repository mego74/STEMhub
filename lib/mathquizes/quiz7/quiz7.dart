import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz7/result7.dart';
import 'package:untitled7/mathquizes/quiz7/quizzz7.dart';



void main() => runApp(Quiz7());

class Quiz7 extends StatelessWidget {
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

      'questionText': '',
      'image':'assets/images/exponents1.png',
      'answers': [
        {'text': '3.5', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '4.5', 'score': 0}
      ]
    }, {
      'questionText': 'Simplify',
      'image':'assets/images/exponents2.png',
      'answers': [
        {'text': 'A', 'score': 0},
        {'text': 'B', 'score': 1},
        {'text': 'C', 'score': 0},
        {'text': 'D', 'score':0}
      ]
    }, {
      'questionText': 'Simplify',
      'image':'assets/images/exponents3.png',
      'answers': [
        {'text': 'A', 'score': 0},
        {'text': 'B', 'score': 1},
        {'text': 'C', 'score': 0},
        {'text': 'D', 'score':0}
      ]
    },{
      'questionText': 'Simplify',
      'image':'assets/images/exponents4.png',
      'answers': [
        {'text': 'A', 'score': 1},
        {'text': 'B', 'score': 0},
        {'text': 'C', 'score': 0},
        {'text': 'D', 'score':0}
      ]
    },{
      'questionText': 'Simplify',
      'image':'assets/images/exponents5.png',
      'answers': [
        {'text': 'A', 'score': 0},
        {'text': 'B', 'score': 0},
        {'text': 'C', 'score': 0},
        {'text': 'D', 'score':1}
      ]
    }, {
      'questionText': 'What is the value of (3/4)^0',
      'image':'',
      'answers': [
        {'text': '0', 'score': 0},
        {'text': '3/16', 'score': 0},
        {'text': '3/4', 'score': 0},
        {'text': '1', 'score': 1}
      ]
    },
    {
      'questionText': 'What is the value of (5)^-2',
      'image':'',
      'answers': [
        {'text': '-10', 'score': 0},
        {'text': '1/25', 'score': 1},
        {'text': '1/5', 'score': 0},
        {'text': '-1/10', 'score': 0}
      ]
    },
    {
      'questionText': 'What is the equivalent of y^(-11) * y*(5)',
      'image':'',
      'answers': [
        {'text': '1 / y*(6)', 'score': 1},
        {'text': 'y*(6)', 'score': 0},
        {'text': '-y*(6)', 'score': 0},
        {'text': '-1 / y*(6)', 'score': 0}
      ]
    },
    {
      'questionText': 'If 3x = 5 . Then 27^(x) = and 27^(-x) =',
      'image':'',
      'answers': [
        {'text': '125 , 0.008', 'score': 1},
        {'text': '125 , 0.04', 'score': 0},
        {'text': '125 , 125', 'score': 0},
        {'text': '25 , 0.04', 'score': 0}
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
                    " Exponents",
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