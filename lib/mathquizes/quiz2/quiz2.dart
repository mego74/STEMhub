import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz2/result2.dart';
import 'package:untitled7/mathquizes/quiz2/quizzz2.dart';



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

      'questionText': 'In the figure, if O is the centre of a circle, then the measure of ∠ACB is',
      'image':'assets/images/circle1.png',
      'answers': [
        {'text': '80°', 'score': 0},
        {'text': '100°', 'score': 0},
        {'text': '40°', 'score': 1},
        {'text': '60°', 'score': 0}
      ]
    }, {
      'questionText': 'In the figure, if O is the centre of the circle, then the measure of x is',
      'image':'assets/images/circle2.png',
      'answers': [
        {'text': '40°', 'score': 0},
        {'text': '50°', 'score': 1},
        {'text': '80°', 'score': 0},
        {'text': '110°', 'score':0}
      ]
    }, {
      'questionText': 'In the figure, if O is the centre of the circle, then what is the measure of ∠ADC?',
      'image':'assets/images/circle3.png',
      'answers': [
        {'text': '45°', 'score': 1},
        {'text': '60°', 'score': 0},
        {'text': '90°', 'score': 0},
        {'text': '110°', 'score': 0}
      ]
    },{
      'questionText': 'In the figure, O is the center of the circle. What is the measure of ∠AOC?',
      'image':'assets/images/circle4.png',
      'answers': [
        {'text': '120°', 'score': 0},
        {'text': '128°', 'score': 0},
        {'text': '136°', 'score': 0},
        {'text': '158°', 'score': 1}
      ]
    },{
      'questionText': 'In the figure, O is the center of the circle. What is the measure of ∠ACB?',
      'image':'assets/images/circle5.png',
      'answers': [
        {'text': '45°', 'score': 0},
        {'text': '60°', 'score': 1},
        {'text': '70°', 'score': 0},
        {'text': '90°', 'score': 0}
      ]
    }, {
      'questionText': 'In the figure, O is the center of the circle. What is the value of x?',
      'image':'assets/images/circle6.png',
      'answers': [
        {'text': '125°', 'score': 0},
        {'text': '85°', 'score': 0},
        {'text': '95°', 'score': 0},
        {'text': '105°', 'score': 1}
      ]
    },
    {
      'questionText': 'In the figure, O is the centre of the circle. If ∠ADC = 140°, then what is the value of x?',
      'image':'assets/images/circle7.png',
      'answers': [
        {'text': '60°', 'score': 0},
        {'text': '55°', 'score': 0},
        {'text': '45°', 'score': 1},
        {'text': '40°', 'score': 0}
      ]
    },
    {
      'questionText': 'In the figure, Ab is a chord of length 16 cm, of a circle of radius 10 cm. The tangents at A and B intersect at a point P. Find the length of PA',
      'image':'assets/images/circle8.png',
      'answers': [
        {'text': '40/3', 'score': 1},
        {'text': '20/3', 'score': 0},
        {'text': '40/5', 'score': 0},
        {'text': '20/5', 'score': 0}
      ]
    },
    {
      'questionText': 'PT is a tangent to a circle whose center is O. If PT = 12 cm and PO = 13 cm then find the radius of the circle',
      'image':'',
      'answers': [
        {'text': '4 cm', 'score': 1},
        {'text': '4.5 cm', 'score': 0},
        {'text': '5 cm', 'score': 0},
        {'text': '6 cm', 'score': 0}
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
                    " Circles",
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