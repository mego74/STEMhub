import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz8/result8.dart';
import 'package:untitled7/mathquizes/quiz8/quizzz8.dart';



void main() => runApp(Quiz8());

class Quiz8 extends StatelessWidget {
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

      'questionText': 'Find the slope of the line',
      'image':'assets/images/slope1.png',
      'answers': [
        {'text': '-2', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '-1', 'score': 1},
        {'text': '1', 'score': 0}
      ]
    }, {
      'questionText': 'Write the equation of the line',
      'image':'assets/images/slope2.png',
      'answers': [
        {'text': 'y = (-x) - 3', 'score': 0},
        {'text': 'y = (-3x) - 3', 'score': 1},
        {'text': 'y = (-1/3x) - 1', 'score': 0},
        {'text': 'y = (-3x) - 1', 'score':0}
      ]
    }, {
      'questionText': 'Write the equation of the line',
      'image':'assets/images/slope3.png',
      'answers': [
        {'text': 'y = (-2/3x) + 4', 'score': 0},
        {'text': 'y = (2/3x) + 4', 'score': 0},
        {'text': 'y = (3/2x) + 4', 'score': 0},
        {'text': 'y = (-3/2x) + 4', 'score':1}
      ]
    },{
      'questionText': 'Which of the following lines goes through the point (0, 4) and is parallel to y = 5x - 3?',
      'image':'assets/images/slope4.png',
      'answers': [
        {'text': 'y = (1/5x) - 3', 'score': 0},
        {'text': 'y = (5x) - 7', 'score': 0},
        {'text': 'y = (5x) + 4', 'score': 1},
        {'text': 'y = (-5x) - 3', 'score':0}
      ]
    },{
      'questionText': 'A climber is on a hike. After 2 hours he is at an altitude of 400 feet. After 6 hours, he is at an altitude of 700 feet. What is the average rate of change?',
      'image':'',
      'answers': [
        {'text': '300', 'score': 0},
        {'text': '200', 'score': 0},
        {'text': '150', 'score': 0},
        {'text': '75', 'score':1}
      ]
    }, {
      'questionText': 'What is slope-intercept form of the equation of a line?',
      'image':'',
      'answers': [
        {'text': 'y = kx', 'score': 0},
        {'text': 'y2 - y1 = m (x2 - x1)', 'score': 0},
        {'text': 'y = mx + b', 'score': 1},
        {'text': 'Ax + By = C', 'score': 0}
      ]
    },
    {
      'questionText': 'Write the equation in slope-intercept form (solve for y):\n2y = 10x + 14',
      'image':'',
      'answers': [
        {'text': 'y = (10x) + 12', 'score': 0},
        {'text': 'y = (5x) + 7', 'score': 1},
        {'text': 'y = (10x) + 7', 'score': 0},
        {'text': 'y = (5x) + 14', 'score': 0}
      ]
    },
    {
      'questionText': 'The total cost of renting a car is 22EGP per day, plus an initial fee of 55EGP. Which equation best describes this relationship?',
      'image':'',
      'answers': [
        {'text': 'c = 55 + 22d', 'score': 1},
        {'text': 'c = 55d - 22', 'score': 0},
        {'text': 'c = 22d - 55', 'score': 0},
        {'text': 'c = 22d + 100', 'score': 0}
      ]
    },
    {
      'questionText': 'y = (-2/3x) + 2\ny = (3/2x) + 9\nThese lines are',
      'image':'',
      'answers': [
        {'text': 'Perpendicular', 'score': 1},
        {'text': 'Parallel', 'score': 0},
        {'text': 'Neither', 'score': 0},
        {'text': 'The same line', 'score': 0}
      ]
    },
    {
      'questionText': 'What is the solution to the system?\n8x + 4y = 12\ny = (-2x) + 3',
      'image':'',
      'answers': [
        {'text': '(0,3)', 'score': 0},
        {'text': '(3,0)', 'score': 0},
        {'text': 'No solution', 'score': 0},
        {'text': 'Infinitely many solutions', 'score': 1}
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
                    " Slope of a line",
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