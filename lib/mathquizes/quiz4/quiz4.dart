import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz4/result4.dart';
import 'package:untitled7/mathquizes/quiz4/quizzz4.dart';

void main() => runApp(Quiz4());

class Quiz4 extends StatelessWidget {
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
      'questionText': 'The greatest value of sin^4(θ) + cos^4(θ) is?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '1', 'score': 1},
        {'text': '3', 'score': 0},
        {'text': '12', 'score': 0}
      ]
    }, {
      'questionText': 'If θ be a positive acute angle satisfying cos^2(θ) + cos^4(θ) = 1, then the value of tan^2(θ) + tan^4(θ) is?',
      'answers': [
        {'text': '1.5', 'score': 0},
        {'text': '1', 'score': 1},
        {'text': '0.5', 'score': 0},
        {'text': '0', 'score':0}
      ]
    }, {
      'questionText': 'The value of the expression: sin^2(1°) + sin^2(11°) + sin^2(21°) + sin^2(31°) + sin^2(41°) + sin^2(45°) + sin^2(49°) + sin^2(59°) + sin^2(69°) + sin^2(79°) + sin^2(89°) is?',
      'answers': [
        {'text': '5.5', 'score': 1},
        {'text': '5', 'score': 0},
        {'text': '4.5', 'score': 0},
        {'text': '0', 'score': 0}
      ]
    },{
      'questionText': 'If cos(X - 10) = sin(2X + 40) . Find X. Knowing that (2X + 40 > 90)',
      'answers': [
        {'text': '20', 'score': 0},
        {'text': '30', 'score': 0},
        {'text': '40', 'score': 1},
        {'text': '50', 'score': 0}
      ]
    },{
      'questionText': 'If cos20° = m and cos70° =n, then the value of m^2 + n^2 is?',
      'answers': [
        {'text': '0.5', 'score': 0},
        {'text': '1', 'score': 1},
        {'text': '1.5', 'score': 0},
        {'text': '1 / √2', 'score': 0}
      ]
    }, {
      'questionText': 'If cos^2(θ) - sin^2(θ) = 1/3 where 0 ≤ θ ≤ π/2 then the value of cos^4(θ) - sin^4(θ) is?',
      'answers': [
        {'text': '1/9', 'score': 0},
        {'text': '2/9', 'score': 0},
        {'text': '2/3', 'score': 0},
        {'text': '1/3', 'score': 1}
      ]
    },
    {
      'questionText': 'What is the inverse tangent?',
      'answers': [
        {'text': 'tan^(-1)', 'score': 1},
        {'text': 'cos^(-1)', 'score': 0},
        {'text': 'tan^(2)', 'score': 0},
        {'text': '1 – tan', 'score': 0}
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
                    " Trigonometry",
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