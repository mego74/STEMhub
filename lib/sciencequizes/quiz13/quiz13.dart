import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz13/result13.dart';
import 'package:untitled7/sciencequizes/quiz13/quizzz13.dart';

void main() => runApp(Quiz13());

class Quiz13 extends StatelessWidget {
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
      'questionText': 'Which list contains only substances that dissolve?',
      'answers': [
        {'text': 'oil, sugar, pepper', 'score': 0},
        {'text': 'butter, carrots, cooking oil', 'score': 0},
        {'text': 'sugar, oil, carrots', 'score': 0},
        {'text': 'sugar, salt, koolaid mix', 'score': 1}
      ]
    }, {
      'questionText': 'What is a mixture? ',
      'answers': [
        {'text': 'A combination of elements to make a new substance', 'score': 0},
        {'text': 'A chemically combined substance', 'score': 0},
        {'text': 'A combination of substances where new substances are formed through a reaction', 'score': 0},
        {'text': 'A combination of substances in which the atoms of the substance do not chemically combine', 'score':1}
      ]
    }, {
      'questionText': '	When salt dissolves in water, the particles are spread out so evenly they seem to be?',
      'answers': [
        {'text': 'Invisible', 'score': 1},
        {'text': 'Solid', 'score': 0},
        {'text': 'Energized', 'score': 0},
        {'text': 'Alive', 'score': 0}
      ]
    },{
      'questionText': 'Solubility is ______',
      'answers': [
        {'text': 'A type of mixture in which one substance has dissolved in another substance', 'score': 0},
        {'text': 'The ability of a substance to dissolve in a liquid', 'score': 1},
        {'text': 'A type of mixture in which two substance has dissolved in another substance', 'score': 0},
        {'text': 'A combination of two or more substances that do not join together to form a new substance', 'score': 0}
      ]
    },{
      'questionText': 'The solubility of a solid in water will increase if you',
      'answers': [
        {'text': 'increase the temperature of the water', 'score': 1},
        {'text': 'decrease the temperature of the water', 'score': 0},
        {'text': 'increase the surface area of the solid particles', 'score': 0},
        {'text': 'decrease the surface area of the solid particles', 'score': 0}
      ]
    }, {
      'questionText': 'Which one of the following is NOT a solution?',
      'answers': [
        {'text': 'Cup of coffee', 'score': 0},
        {'text': 'Glass of apple juice', 'score': 0},
        {'text': 'Seawater', 'score': 0},
        {'text': 'Glass of milk', 'score': 1}
      ]
    },
    {
      'questionText': 'The phenomenon of water being able to rise up a narrow tube is called ______',
      'answers': [
        {'text': 'capillary action', 'score': 1},
        {'text': 'distillation', 'score': 0},
        {'text': 'chromatography', 'score': 0},
        {'text': 'filtrati', 'score': 0},
      ]
    },
    {
      'questionText': 'What is a homogeneous mixture?',
      'answers': [
        {'text': 'A mixture that cannot distinguish between different materials', 'score': 1},
        {'text': 'A mixture in which one of its substances must be liquid', 'score': 0},
        {'text': 'A mixture that can distinguish different materials', 'score': 0},
        {'text': 'A mixture that has a chemical bond between different materials', 'score': 0},
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
                    " Mixtures & Solutions",
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