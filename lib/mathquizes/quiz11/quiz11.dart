import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz11/result11.dart';
import 'package:untitled7/mathquizes/quiz11/quizzz11.dart';

void main() => runApp(Quiz11());

class Quiz11 extends StatelessWidget {
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
      'questionText': 'The probability of a leap year selected at random contain 53 Sunday is',
      'answers': [
        {'text': '53/ 366', 'score': 1},
        {'text': '1/7', 'score': 0},
        {'text': '2/7', 'score': 0},
        {'text': '53/365', 'score': 0}
      ]
    }, {
      'questionText': 'If three coins are tossed simultaneously, then the probability of getting at least two heads, is',
      'answers': [
        {'text': '3/8', 'score': 0},
        {'text': '1/8', 'score': 0},
        {'text': '1/4', 'score': 0},
        {'text': '1/2', 'score':1}
      ]
    }, {
      'questionText': 'Two dice are thrown simultaneously. The probability of getting a sum of 9 is',
      'answers': [
        {'text': '1/10', 'score': 0},
        {'text': '1/9', 'score': 1},
        {'text': '3/10', 'score': 0},
        {'text': '4/9', 'score': 0}
      ]
    },{
      'questionText': 'A bag contains 5 red balls and some blue balls. If the probability of drawing a blue ball is double that of a red ball, then the number of blue balls in a bag is',
      'answers': [
        {'text': '15', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '20', 'score': 0}
      ]
    },{
      'questionText': 'A box of 600 bulbs contains 12 defective bulbs. One bulb is taken out at random from this box. Then the probability that it is non-defective bulb is',
      'answers': [
        {'text': '143/150', 'score': 0},
        {'text': '147/150', 'score': 1},
        {'text': '1/25', 'score': 0},
        {'text': '1/50', 'score': 0}
      ]
    }, {
      'questionText': 'A number x is chosen at random from the numbers -2, -1, 0 , 1, 2. Then the probability that x^2 < 2 is',
      'answers': [
        {'text': '1/5', 'score': 0},
        {'text': '2/5', 'score': 0},
        {'text': '3/5', 'score': 1},
        {'text': '4/5', 'score': 0},
      ]
    },
    {
      'questionText': 'A jar contains 24 marbles. Some are red and others are white. If a marble is drawn at random from the jar, the probability that it is red is 2/3, then the number of white marbles in the jar is',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '8', 'score': 1}
      ]
    },
    {
      'questionText': 'A number is selected at random from first 50 natural numbers. Then the probability that it is a multiple of 3 and 4 is',
      'answers': [
        {'text': '2/25', 'score': 1},
        {'text': '1/25', 'score': 0},
        {'text': '4/25', 'score': 0},
        {'text': '7/50', 'score': 0}
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
                    " Statistics II",
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