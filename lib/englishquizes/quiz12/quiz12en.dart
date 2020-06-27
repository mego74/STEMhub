import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz12/result12.dart';
import 'package:untitled7/englishquizes/quiz12/quizzz12.dart';



void main() => runApp(Quiz12());

class Quiz12 extends StatelessWidget {
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
      'questionText': 'He wants to get a better ____ and earn more money.',
      'answers': [
        {'text': 'employ', 'score': 0},
        {'text': 'job', 'score': 1},
        {'text': 'work', 'score': 0},
        {'text': 'employment', 'score': 0}
      ]
    }, {
      'questionText': 'Obviously, objectives occasionally ____ be modified or changed.',
      'answers': [
        {'text': 'ought', 'score': 0},
        {'text': 'shouldn’t', 'score': 0},
        {'text': 'must to', 'score': 0},
        {'text': 'have to', 'score':1}
      ]
    }, {
      'questionText': 'Managers who are ambitious are ____ oriented managers.',
      'answers': [
        {'text': 'success', 'score': 1},
        {'text': 'socially', 'score': 0},
        {'text': 'well', 'score': 0},
        {'text': 'non', 'score': 0}
      ]
    },{
      'questionText': 'Warning! No unauthorized personnel ____ this point.',
      'answers': [
        {'text': 'about', 'score': 0},
        {'text': 'from', 'score': 0},
        {'text': 'beyond', 'score': 1},
        {'text': 'on', 'score': 0}
      ]
    },{
      'questionText': 'As long as ____ have needs that need to be represented they’ll need trade unions.',
      'answers': [
        {'text': 'employers', 'score': 0},
        {'text': 'employees', 'score': 1},
        {'text': 'managers', 'score': 0},
        {'text': 'partners', 'score': 0}
      ]
    }, {
      'questionText': 'Market leaders usually want to ____ their market share even further, or at least to protect their current market share.',
      'answers': [
        {'text': 'decrease', 'score': 0},
        {'text': 'dominate', 'score': 0},
        {'text': 'establish', 'score': 0},
        {'text': 'increase', 'score': 1}
      ]
    },
    {
      'questionText': 'The government has ____ smoking in public places.',
      'answers': [
        {'text': 'Prevented', 'score': 0},
        {'text': 'Avoided', 'score': 0},
        {'text': 'Stopped', 'score': 0},
        {'text': 'Banned', 'score': 1}
      ]
    },
    {
      'questionText': 'My mother ____ me for breaking the window.',
      'answers': [
        {'text': 'Charged', 'score': 0},
        {'text': 'Blamed', 'score': 1},
        {'text': 'Complained', 'score': 0},
        {'text': 'Accused', 'score': 0}
      ]
    },
    {
      'questionText': 'The press conference was a ____ because the reporters didn’t learn anything new.',
      'answers': [
        {'text': 'Disappointment', 'score': 1},
        {'text': 'Regret', 'score': 0},
        {'text': 'Discontent', 'score': 0},
        {'text': 'Dissatisfaction', 'score': 0}
      ]
    },
    {
      'questionText': 'Which word means the same as distinct?',
      'answers': [
        {'text': 'satisfied', 'score': 0},
        {'text': 'imprecise', 'score': 0},
        {'text': 'uneasy', 'score': 0},
        {'text': 'separate', 'score': 1}
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
                    " General Vocab I",
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