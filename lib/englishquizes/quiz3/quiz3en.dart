import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz3/result3.dart';
import 'package:untitled7/englishquizes/quiz3/quizzz3.dart';



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
      'questionText': 'I have been awake for ____.',
      'answers': [
        {'text': 'yesterday', 'score': 0},
        {'text': 'half an hour', 'score': 1},
        {'text': 'this morning', 'score': 0},
        {'text': 'two o\'clock', 'score': 0}
      ]
    }, {
      'questionText': 'How long ____ the children slept?',
      'answers': [
        {'text': 'did', 'score': 0},
        {'text': 'was', 'score': 0},
        {'text': 'has', 'score': 0},
        {'text': 'have', 'score':1}
      ]
    }, {
      'questionText': 'I saw him in May, but I ____ him since.',
      'answers': [
        {'text': 'haven\'t seen', 'score': 1},
        {'text': 'never seen', 'score': 0},
        {'text': 'wasn\'t seen', 'score': 0},
        {'text': 'didn\'t see', 'score': 0}
      ]
    },{
      'questionText': 'How much money ____ you ___ since last year?',
      'answers': [
        {'text': 'were / save', 'score': 0},
        {'text': 'are / saving', 'score': 0},
        {'text': 'have / saved', 'score': 1},
        {'text': 'did / save', 'score': 0}
      ]
    },{
      'questionText': 'My father _____ the same car for ten years.',
      'answers': [
        {'text': 'has drove', 'score': 0},
        {'text': 'has driven', 'score': 1},
        {'text': 'drove', 'score': 0},
        {'text': 'was drove', 'score': 0}
      ]
    }, {
      'questionText': 'She ____ the control of the car and ____ the wall.',
      'answers': [
        {'text': 'was lose / was hit', 'score': 0},
        {'text': 'loses / hit', 'score': 0},
        {'text': 'was lost / was hit by', 'score': 0},
        {'text': 'lost / hit', 'score': 1}
      ]
    },
    {
      'questionText': 'She ___ very tired so she ____ the dishes.',
      'answers': [
        {'text': 'feels / didn’t washes', 'score': 0},
        {'text': 'didn’t feel / didn’t washed', 'score': 0},
        {'text': 'was felt / wasn’t washed', 'score': 0},
        {'text': 'felt / didn’t wash', 'score': 1}
      ]
    },
    {
      'questionText': 'It ____ rainy but she ___ an umbrella with her.',
      'answers': [
        {'text': 'can / brought', 'score': 0},
        {'text': 'is / isn’t bring', 'score': 0},
        {'text': 'was / brings', 'score': 0},
        {'text': 'wasn’t / brought', 'score': 1}
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
                    " Grammar III",
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