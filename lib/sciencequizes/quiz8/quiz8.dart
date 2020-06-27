import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz8/result8.dart';
import 'package:untitled7/sciencequizes/quiz8/quizzz8.dart';

void main() => runApp(Quiz8());

class Quiz8 extends StatelessWidget {
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
      'questionText': 'Excess of amino acids is broken down to form urea in:',
      'answers': [
        {'text': 'Liver', 'score': 0},
        {'text': 'Kidney', 'score': 1},
        {'text': 'Spleen', 'score': 0},
        {'text': 'Rectum', 'score': 0}
      ]
    }, {
      'questionText': 'All of the following belong to the urinary system EXCEPT the',
      'answers': [
        {'text': 'Urethra', 'score': 0},
        {'text': 'Ureter', 'score': 0},
        {'text': 'Bladder', 'score': 0},
        {'text': 'Prostate', 'score':1}
      ]
    }, {
      'questionText': 'What does the Larynx do ?',
      'answers': [
        {'text': 'The larynx is part of the Endocrine system', 'score': 0},
        {'text': 'The larynx is part of the plant cells', 'score': 0},
        {'text': 'The larynx holds the vocal chords', 'score': 1},
        {'text': 'The larynx is part of animal tissues', 'score': 0}
      ]
    },{
      'questionText': 'The two main branches from the trachea (one to each lung)',
      'answers': [
        {'text': 'Bronchi', 'score': 1},
        {'text': 'Alveoli', 'score': 0},
        {'text': 'Capillaries', 'score': 0},
        {'text': 'Bronchioles', 'score': 0}
      ]
    },{
      'questionText': 'What is the function of the bronchi (bronchial tubes)?',
      'answers': [
        {'text': 'Transport air from nose to lungs', 'score': 0},
        {'text': 'Transport air from trachea to lungs', 'score': 1},
        {'text': 'Transport air from lungs to alveoli', 'score': 0},
        {'text': 'Transport air from alveoli to blood', 'score': 0}
      ]
    }, {
      'questionText': 'Which of the following is the correct order for air passing through the lungs?',
      'answers': [
        {'text': 'bronchus ➞ alveoli ➞ trachea ➞ bronchioles', 'score': 0},
        {'text': 'trachea ➞ alveoli ➞ bronchi ➞ bronchioles', 'score': 0},
        {'text': 'bronchus ➞ trachea ➞ bronchioles ➞ alveoli', 'score': 0},
        {'text': 'trachea ➞ bronchus ➞ bronchiole ➞ alveoli', 'score': 1}
      ]
    },
    {
      'questionText': 'Tiny tubes taking air to the alveoli are called',
      'answers': [
        {'text': 'Bronchioles', 'score': 1},
        {'text': 'Bronchi', 'score': 0},
        {'text': 'Lungs', 'score': 0},
        {'text': 'Capillaries', 'score': 0}
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
                    " Biological Systems II",
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