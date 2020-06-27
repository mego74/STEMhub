import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz3/result3.dart';
import 'package:untitled7/mathquizes/quiz3/quizzz3.dart';

void main() => runApp(Quiz3());

class Quiz3 extends StatelessWidget {
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
      'questionText': 'If ‘x’ and ‘y’ are in a direct proportion then which of the following is correct?',
      'answers': [
        {'text': 'x – y = constant', 'score': 0},
        {'text': 'x / y = constant', 'score': 1},
        {'text': 'x * y = constant', 'score': 0},
        {'text': 'x + y = constant', 'score': 0}
      ]
    }, {
      'questionText': 'If ‘x’ and ‘y’ are in an inverse variation then which of the following is correct?',
      'answers': [
        {'text': 'x – y = constant', 'score': 0},
        {'text': 'x / y = constant', 'score': 0},
        {'text': 'x * y = constant', 'score': 0},
        {'text': 'x + y = constant', 'score':1}
      ]
    }, {
      'questionText': 'If ‘A’ can finish a work in ‘n’ days then part of work finished in 1 day is',
      'answers': [
        {'text': '1 / n', 'score': 1},
        {'text': '1 – n', 'score': 0},
        {'text': 'n - 1', 'score': 0},
        {'text': 'none of these', 'score': 0}
      ]
    },{
      'questionText': 'If amount of work completed by ‘A’ in one day is 1/n then the whole work will be finished by ‘A’ is',
      'answers': [
        {'text': 'n days', 'score': 1},
        {'text': '1 – n days', 'score': 0},
        {'text': 'n – 1 days', 'score': 0},
        {'text': 'none of these', 'score': 0}
      ]
    },{
      'questionText': 'If speed is more than time to cover a fixed distance would be less”. This is a case of',
      'answers': [
        {'text': 'direct variation', 'score': 0},
        {'text': 'inverse variation', 'score': 1},
        {'text': 'indirect variation', 'score': 0},
        {'text': 'none of the above', 'score': 0}
      ]
    }, {
      'questionText': 'Which of the following is not a case of direct variation?',
      'answers': [
        {'text': 'Number of sheets of some kind are increased when their total weight its increased', 'score': 0},
        {'text': 'More quantity of petrol is required to travel more distance with a fixed speed', 'score': 0},
        {'text': 'More fees would be collected if number of students increased in a class', 'score': 0},
        {'text': 'Time taken will be less if number of workers are increased to complete the same work', 'score': 1}
      ]
    },
    {
      'questionText': 'If x and y vary inversely. When x = 5, y = 30. The value of x for y = 10 is',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '20', 'score': 0},
        {'text': '15', 'score': 1},
        {'text': '40', 'score': 0}
      ]
    },
    {
      'questionText': 'If 20 men can build a wall 56m long in 6-daysWhat length of a similar wall can be built by 35 men in 3 days?',
      'answers': [
        {'text': '49m', 'score': 0},
        {'text': '36m', 'score': 0},
        {'text': '42m', 'score': 0},
        {'text': '52m', 'score': 1}
      ]
    },
    {
      'questionText': '120 men had provisions for 200 days. After 5 days, 30 men died due to an epidemic. The remaining food will last for',
      'answers': [
        {'text': '146.25 days', 'score': 0},
        {'text': '150 days', 'score': 0},
        {'text': '225.5 days', 'score': 0},
        {'text': '260 days', 'score': 1}
      ]
    },
    {
      'questionText': '12 men, working 8 hours a day, complete a piece of work in 10 days. To complete the same work in 8 days, working 15 hours a day, the number of men required, is',
      'answers': [
        {'text': '4', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 1}
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
                    " Direct & Indirect & variation",
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