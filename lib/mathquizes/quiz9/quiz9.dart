import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz9/result9.dart';
import 'package:untitled7/mathquizes/quiz9/quizzz9.dart';

void main() => runApp(Quiz9());

class Quiz9 extends StatelessWidget {
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
      'questionText': 'Find the midpoint of the segment with the endpoints:(6, 7) and (6, -5)',
      'answers': [
        {'text': '(0, -1)', 'score': 0},
        {'text': '(6, 1)', 'score': 1},
        {'text': '(1, 6)', 'score': 0},
        {'text': '(0, 1)', 'score': 0}
      ]
    }, {
      'questionText': 'Find the distance of the segment with the endpoints:(9, 7) and (3, 2)',
      'answers': [
        {'text': '7.8', 'score': 1},
        {'text': '7.1', 'score': 0},
        {'text': '(6, 4.5)', 'score': 0},
        {'text': '(2.5, 8)', 'score':0}
      ]
    }, {
      'questionText': 'What\'s the distance between (0,0) and (3,4)?',
      'answers': [
        {'text': '5', 'score': 1},
        {'text': '7', 'score': 0},
        {'text': '25', 'score': 0},
        {'text': '49', 'score': 0}
      ]
    },{
      'questionText': 'Find the coordinates of the point equidistant from the points A(1, 2), B (3, –4) and C(5, –6)',
      'answers': [
        {'text': '(0, 3)', 'score': 0},
        {'text': '(2, 3)', 'score': 0},
        {'text': '(–1, –2)', 'score': 1},
        {'text': '(1, 3)', 'score': 0}
      ]
    },{
      'questionText': 'Find the value of P for which the point (–1, 3), (2, p) and (5, –1) are collinear',
      'answers': [
        {'text': '4', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '1', 'score': 1}
      ]
    }, {
      'questionText': 'Find the distance of the point (–6, 8) from the origin',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '9', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '11', 'score': 0}
      ]
    },
    {
      'questionText': 'Ohio is at point (3, 4) on Map and Columbus is at point (7, 1) on Map. The map shows a rest stop halfway between the cities. What are the coordinates of the rest stop?What is the distance between Ohio and Columbus? (unit = 10.9miles)',
      'answers': [
        {'text': '(5, 2.5), 54.5 miles', 'score': 1},
        {'text': '(3/2,3), 16 miles', 'score': 0},
        {'text': '(5, 2.5), 5 miles', 'score': 0},
        {'text': '(3/2,3), 50 miles', 'score': 0}
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
                    " Midpoint & Distance",
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