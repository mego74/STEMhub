import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz2/result2.dart';
import 'package:untitled7/sciencequizes/quiz2/quizzz2.dart';

void main() => runApp(Quiz2());

class Quiz2 extends StatelessWidget {
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
      'questionText': 'A branch of chemistry that deals with the separation, identification, and quantification of chemical compounds',
      'answers': [
        {'text': 'Analytical Chemistry ', 'score': 1},
        {'text': 'Biochemistry', 'score': 0},
        {'text': 'Organic Chemistry', 'score': 0},
        {'text': 'Inorganic Chemistry', 'score': 0}
      ]
    }, {
      'questionText': 'An analysis that establishes the chemical identity of the species',
      'answers': [
        {'text': 'Quantitative Analysis', 'score': 0},
        {'text': 'Quantitative Synthesis', 'score': 0},
        {'text': 'Qualitative Analysis', 'score': 1},
        {'text': 'Qualitative Synthesis', 'score':0}
      ]
    }, {
      'questionText': 'An analysis that determines the relative amounts of analytes in numerical terms',
      'answers': [
        {'text': 'Quantitative Analysis', 'score': 1},
        {'text': 'Qualitative Analysis', 'score': 0},
        {'text': 'Quantitative Synthesis', 'score': 0},
        {'text': 'Qualitative Synthesis', 'score': 0}
      ]
    },{
      'questionText': 'A system of physical units based on the meter, kilogram, second, ampere, kelvin, candela, and mole, together with a set of prefixes to indicate multiplication or division by a power of ten',
      'answers': [
        {'text': 'System Unit', 'score': 0},
        {'text': 'Unit of measurement', 'score': 0},
        {'text': 'International system of unit', 'score': 1},
        {'text': 'Measurement unit System', 'score': 0}
      ]
    },{
      'questionText': 'Convert the following 2.37x10−3',
      'answers': [
        {'text': '237', 'score': 0},
        {'text': '0.00237', 'score': 1},
        {'text': '237,000', 'score': 0},
        {'text': '0.000237', 'score': 0}
      ]
    }, {
      'questionText': 'Which of the following hydroxide will turn black on heating?',
      'answers': [
        {'text': 'Iron(II)hydroxide', 'score': 0},
        {'text': 'Iron(III)hydroxide', 'score': 0},
        {'text': 'Zinchydroxide', 'score': 0},
        {'text': 'Copperhydroxide', 'score': 1}
      ]
    },
    {
      'questionText': 'What is the cell voltage at reaction equilibrium?',
      'answers': [
        {'text': 'Zero', 'score': 1},
        {'text': 'It is oxidized', 'score': 0},
        {'text': 'It is reduced', 'score': 0},
        {'text': 'None of the above', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following substances CANNOT be separated by distillation?',
      'answers': [
        {'text': 'A mixture of proteins', 'score': 1},
        {'text': 'Crude oil fractions', 'score': 0},
        {'text': 'Oxygen and nitrogen in air', 'score': 0},
        {'text': 'Water in salt solution', 'score': 0}
      ]
    },
    {
      'questionText': 'Sodium (Na) is a light and soft metal. It is common to store sodium in a pot containing oil. What is Your explanation for that?',
      'answers': [
        {'text': 'Oil makes sodium harsh', 'score': 0},
        {'text': 'Oil isolates sodium from air', 'score': 1},
        {'text': 'Oil prevents melting of sodium', 'score': 0},
        {'text': 'Oil prevents sodium analysis', 'score': 0}
      ]
    },
    {
      'questionText': 'Which one of these processes describes the compounds analysis?',
      'answers': [
        {'text': 'Heating iodine crystals to get iodine vapour', 'score': 0},
        {'text': 'Boiling water to get water vapour', 'score': 0},
        {'text': 'Heating mercuric oxide to get oxygen and mercury', 'score': 1},
        {'text': 'Heating Iron to get molten iron', 'score': 0}
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
                    " Analytical Chemistry",
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