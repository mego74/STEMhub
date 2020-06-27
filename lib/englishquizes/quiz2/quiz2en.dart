import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz2/result2.dart';
import 'package:untitled7/englishquizes/quiz2/quizzz2.dart';



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
      'questionText': 'Melissa is _____ down on her bed.',
      'answers': [
        {'text': 'lieing', 'score': 0},
        {'text': 'lying', 'score': 1},
        {'text': 'liying', 'score': 0},
        {'text': 'laying', 'score': 0}
      ]
    }, {
      'questionText': 'They ___ gone to a rock concert.',
      'answers': [
        {'text': '\'s', 'score': 0},
        {'text': '\'es', 'score': 0},
        {'text': '\'ve', 'score': 1},
      ]
    }, {
      'questionText': 'Andrea has _____ her umbrella.',
      'answers': [
        {'text': 'forgotten', 'score': 1},
        {'text': 'forget', 'score': 0},
        {'text': 'forgetting', 'score': 0},
        {'text': 'forgetten', 'score': 0}
      ]
    },{
      'questionText': 'The children _____ the lost puppy.',
      'answers': [
        {'text': 'have find', 'score': 0},
        {'text': 'is finding', 'score': 0},
        {'text': 'have found', 'score': 1},
      ]
    },{
      'questionText': 'I _____________ my homework yet.',
      'answers': [
        {'text': 'haven\'t finish', 'score': 0},
        {'text': 'haven\'t finished', 'score': 1},
        {'text': 'has finished', 'score': 0},
        {'text': 'finished', 'score': 0}
      ]
    }, {
      'questionText': 'I am not hungry. I have _______ eaten.',
      'answers': [
        {'text': 'yet', 'score': 0},
        {'text': 'now', 'score': 0},
        {'text': 'ever', 'score': 0},
        {'text': 'just', 'score': 1}
      ]
    },
    {
      'questionText': 'I have never ____ to Paris.',
      'answers': [
        {'text': 'been', 'score': 1},
        {'text': 'went', 'score': 0},
        {'text': 'go', 'score': 0},
        {'text': 'was', 'score': 0}
      ]
    },
    {
      'questionText': 'I am looking for my pen. I ____ it.',
      'answers': [
        {'text': 'did lost', 'score': 0},
        {'text': 'was lost', 'score': 0},
        {'text': 'have lost', 'score': 1},
        {'text': 'lost', 'score': 0}
      ]
    },
    {
      'questionText': 'During the two years David ____ ten different jobs.',
      'answers': [
        {'text': 'has has', 'score': 0},
        {'text': 'has had', 'score': 1},
        {'text': 'have had', 'score': 0},
        {'text': 'had had', 'score': 0}
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
                    " Grammar II",
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