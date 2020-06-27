import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/iqquizes/quiz8/result8.dart';
import 'package:untitled7/iqquizes/quiz8/quizzz8.dart';

void main() => runApp(Quiz8());

class Quiz8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'El-GAMEYA',
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
      'questionText': 'Which\'s capital of India?',
      'answers': [
        {'text': 'Mumbai', 'score': 0},
        {'text': 'New Delhi', 'score': 1},
        {'text': 'Jaipur', 'score': 0},
        {'text': 'Pune', 'score': 0}
      ]
    }, {
      'questionText': 'Which\'s mother toung of India?',
      'answers': [
        {'text': 'Marathi', 'score': 0},
        {'text': 'Gujarati', 'score': 0},
        {'text': 'Tamil', 'score': 0},
        {'text': 'Hindi', 'score':1}
      ]
    }, {
      'questionText': 'Who\'s prime ministor of India?',
      'answers': [
        {'text': 'Narendra Modi', 'score': 1},
        {'text': 'Amit Shah', 'score': 0},
        {'text': 'Sonia Gandhi', 'score': 0},
        {'text': 'Rahul Gandhi', 'score': 0}
      ]
    },{
      'questionText': 'Who\'s president of India?',
      'answers': [
        {'text': 'Lalkrishna Advani', 'score': 0},
        {'text': 'Barak Obama', 'score': 0},
        {'text': 'Ramnath Kovind', 'score': 1},
        {'text': 'Pratibha Patil', 'score': 0}
      ]
    },{
      'questionText': 'Who\'s Chief Minister of Gujarat?',
      'answers': [
        {'text': 'Nitin Patel', 'score': 0},
        {'text': 'Vijay Rupani', 'score': 1},
        {'text': 'Jayesh Radadiya', 'score': 0},
        {'text': 'Paresh Dhanani', 'score': 0}
      ]
    }, {
      'questionText': 'Which of the following was the author of the Arthashastra?',
      'answers': [
        {'text': 'Kalhan', 'score': 0},
        {'text': 'Visakhadatta', 'score': 0},
        {'text': 'Bana Bhatta', 'score': 0},
        {'text': 'Chanakya', 'score': 1}
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
            // Here the height of the container is 45% of our total height
            height: size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "El-GAMEYA",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 0.5,
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