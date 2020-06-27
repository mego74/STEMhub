import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz1/result1.dart';
import 'package:untitled7/sciencequizes/quiz1/quizzz.dart';

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

      'questionText': 'Identify the type of reaction: N2 + 3H2 → 2NH3',
      'answers': [
        {'text': 'Synthesis', 'score': 1},
        {'text': 'Decomposition', 'score': 0},
        {'text': 'Single Replacement', 'score': 0},
        {'text': 'Double Replacement', 'score': 0}
      ]
    }, {
      'questionText': 'Identify the type of reaction: C2H6 + 5O2 → 3H2O + 2CO2',
      'answers': [
        {'text': 'Decomposition', 'score': 0},
        {'text': 'Single Replacement', 'score': 0},
        {'text': 'Double Replacement', 'score': 0},
        {'text': 'Combustion', 'score':1}
      ]
    }, {
      'questionText': 'Identify the type of reaction: 2AgNO3 + Cu → Cu(NO3)2 + 2Ag',
      'answers': [
        {'text': 'Decomposition', 'score': 0},
        {'text': 'Single Replacement', 'score': 1},
        {'text': 'Double Replacement', 'score': 0},
        {'text': 'Combustion', 'score': 0}
      ]
    },{
      'questionText': 'Identify the type of reaction: 3HBr + Al(OH)3 → 3H2O + AlBr3',
      'answers': [
        {'text': 'Decomposition', 'score': 0},
        {'text': 'Single Replacement', 'score': 0},
        {'text': 'Double Replacement', 'score': 0},
        {'text': 'Neutralization', 'score': 1}
      ]
    },{
      'questionText': 'How many hydrogen atoms are on the product side? N2 + 3H2 → 2NH3 ? ',
      'answers': [
        {'text': 'Six', 'score': 1},
        {'text': 'Five', 'score': 0},
        {'text': 'Four', 'score': 0},
        {'text': 'Three', 'score': 0}
      ]
    }, {
      'questionText': 'What kind of chemical reaction involves oxygen and another substance producing water and carbon dioxide?',
      'answers': [
        {'text': 'Synthesis reaction', 'score': 0},
        {'text': 'Decomposition reaction', 'score': 0},
        {'text': 'Combustion', 'score': 1},
        {'text': 'Single displacement', 'score': 0}
      ]
    },
    {
      'questionText': 'One example of a chemical reaction is when H20 (water) melts and changes state from ice to liquid.',
      'answers': [
        {'text': 'TRUE', 'score': 0},
        {'text': 'FALSE', 'score': 1}
      ]
    },
    {
      'questionText': 'This reaction (NaCl + AgF → NaF + AgCl) simulates what type of reaction?',
      'answers': [
        {'text': 'Synthesis reaction', 'score': 0},
        {'text': 'Decomposition reaction', 'score': 0},
        {'text': 'Double Replacement', 'score': 1},
        {'text': 'Single displacement', 'score': 0}
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
                    " Types of reactions",
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