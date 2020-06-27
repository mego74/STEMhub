import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz1/result1.dart';
import 'package:untitled7/englishquizes/quiz1/quizzz.dart';



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
      'questionText': 'It _____ a lot in Britain',
      'answers': [
        {'text': 'rains', 'score': 1},
        {'text': 'rain', 'score': 0},
        {'text': 'is raining', 'score': 0},
      ]
    }, {
      'questionText': 'My sister _____ to the cinema very often.',
      'answers': [
        {'text': 'goes not', 'score': 0},
        {'text': 'don\'t go', 'score': 0},
        {'text': 'doesn\'t go', 'score': 1},
      ]
    }, {
      'questionText': 'The banks _____ on Sundays',
      'answers': [
        {'text': 'don\'t open', 'score': 1},
        {'text': 'doesn\'t open', 'score': 0},
        {'text': 'isn\'t open', 'score': 0},
      ]
    },{
      'questionText': 'They _____ the answer',
      'answers': [
        {'text': 'aren\'t know', 'score': 0},
        {'text': 'doesn\’t know', 'score': 0},
        {'text': 'don\'t know', 'score': 1},
      ]
    },{
      'questionText': 'They\'re not here. They _____ right now',
      'answers': [
        {'text': 'go to school', 'score': 0},
        {'text': 'are on holiday', 'score': 1},
        {'text': 'swim at the beach', 'score': 0},
      ]
    }, {
      'questionText': 'You _____ so happy today!',
      'answers': [
        {'text': 'looks', 'score': 0},
        {'text': 'be', 'score': 0},
        {'text': 'seem', 'score': 1}
      ]
    },
    {
      'questionText': 'My sister _____ Spanish',
      'answers': [
        {'text': 'learn', 'score': 0},
        {'text': 'is learning', 'score': 1},
        {'text': 'learning', 'score': 0},
      ]
    },
    {
      'questionText': 'I _____ at the hair salon until September',
      'answers': [
        {'text': 'work', 'score': 0},
        {'text': 'be working', 'score': 0},
        {'text': 'am working', 'score': 1},
      ]
    },
    {
      'questionText': 'We _____ at a fancy restaurant tonight. Jason decided this yesterday.',
      'answers': [
        {'text': 'are eating', 'score': 1},
        {'text': 'eat', 'score': 0},
        {'text': 'eats', 'score': 0},
      ]
    },
    {
      'questionText': 'Why ________ playing football tomorrow?',
      'answers': [
        {'text': 'he not is', 'score': 0},
        {'text': 'he isn\'t', 'score': 0},
        {'text': 'isn\'t he', 'score': 1},
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
                    " Grammar I",
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