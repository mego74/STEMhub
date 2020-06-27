import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz6/result6.dart';
import 'package:untitled7/englishquizes/quiz6/quizzz6.dart';



void main() => runApp(Quiz6());

class Quiz6 extends StatelessWidget {
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
      'questionText': 'She ____ all over the world if she ____ rich.',
      'answers': [
        {'text': 'would travel / would be', 'score': 0},
        {'text': 'would travel / were', 'score': 1},
        {'text': 'travelled / would be', 'score': 0},
        {'text': 'travels / were be', 'score': 0}
      ]
    }, {
      'questionText': 'If I ___ you, I ____ that man.',
      'answers': [
        {'text': 'were / helped', 'score': 0},
        {'text': 'weren\'t / don\'t help', 'score': 0},
        {'text': 'am / will help', 'score': 0},
        {'text': 'were / would help', 'score':1}
      ]
    }, {
      'questionText': 'If he ____ more time, he ___ karate.',
      'answers': [
        {'text': 'had / would learn', 'score': 1},
        {'text': 'will have / learns', 'score': 0},
        {'text': 'has / would learn', 'score': 0},
        {'text': 'was have / would learn', 'score': 0}
      ]
    },{
      'questionText': 'She ___ a year in the USA if it ___ easier to get a green card.',
      'answers': [
        {'text': 'would spend / was', 'score': 1},
        {'text': 'will spend / would be', 'score': 0},
        {'text': 'spent / would be', 'score': 0},
        {'text': 'would spend / isn\'t', 'score': 0}
      ]
    },{
      'questionText': 'My brother ___ a sports car if he ___ the money.',
      'answers': [
        {'text': 'bought / would have', 'score': 0},
        {'text': 'would buy / had', 'score': 1},
        {'text': 'would bought / have', 'score': 0},
        {'text': 'bought / would had', 'score': 0}
      ]
    }, {
      'questionText': 'We ___ football if the weather were good.',
      'answers': [
        {'text': 'will be able to play', 'score': 0},
        {'text': 'were able to play', 'score': 0},
        {'text': 'would were able to play', 'score': 0},
        {'text': 'would be able to play', 'score': 1}
      ]
    },
    {
      'questionText': 'The film ___ more interesting if it ___ a happy ending.',
      'answers': [
        {'text': 'would be / has', 'score': 0},
        {'text': 'were / would have', 'score': 0},
        {'text': 'was / would have', 'score': 0},
        {'text': 'would be / had', 'score': 1}
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
                    " Grammar VI",
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