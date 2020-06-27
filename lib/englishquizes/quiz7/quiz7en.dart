import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz7/result7.dart';
import 'package:untitled7/englishquizes/quiz7/quizzz7.dart';



void main() => runApp(Quiz7());

class Quiz7 extends StatelessWidget {
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
      'questionText': 'Children ___ eat a lot of candy often get bad teeth.',
      'answers': [
        {'text': 'which', 'score': 0},
        {'text': 'who', 'score': 1},
        {'text': 'where', 'score': 0},
        {'text': 'whose', 'score': 0}
      ]
    }, {
      'questionText': 'The book ____ you gave me is great.',
      'answers': [
        {'text': 'that', 'score': 1},
        {'text': 'who', 'score': 0},
        {'text': 'whose', 'score': 0},
        {'text': 'when', 'score':0}
      ]
    }, {
      'questionText': 'This is the town ____ I was born.',
      'answers': [
        {'text': 'who', 'score': 0},
        {'text': 'that', 'score': 0},
        {'text': 'which', 'score': 0},
        {'text': 'where', 'score': 1}
      ]
    },{
      'questionText': 'The boy ___ father is a doctor often visits me.',
      'answers': [
        {'text': 'that', 'score': 0},
        {'text': 'where', 'score': 0},
        {'text': 'whose', 'score': 1},
        {'text': 'who', 'score': 0}
      ]
    },{
      'questionText': 'This is the school ____ I learned English.',
      'answers': [
        {'text': 'that', 'score': 0},
        {'text': 'where', 'score': 1},
        {'text': 'who', 'score': 0},
        {'text': 'which', 'score': 0}
      ]
    }, {
      'questionText': 'It is difficult to predict ____ will happen politically if Turkey is refused entry to the European Union.',
      'answers': [
        {'text': 'how', 'score': 0},
        {'text': 'when', 'score': 0},
        {'text': 'which', 'score': 0},
        {'text': 'what', 'score': 1}
      ]
    },
    {
      'questionText': 'As a university student, you should know ____ to use a library very well.',
      'answers': [
        {'text': 'who', 'score': 0},
        {'text': 'how', 'score': 1},
        {'text': 'what', 'score': 0},
        {'text': 'that', 'score': 0}
      ]
    },
    {
      'questionText': 'No one to ____ I have spoken is able to answer my question.',
      'answers': [
        {'text': 'whose', 'score': 0},
        {'text': 'that', 'score': 0},
        {'text': 'whom', 'score': 1},
        {'text': 'which', 'score': 0}
      ]
    },
    {
      'questionText': 'No one knows ____ the Indian custom of sati—widows burning themselves on their husbands\' funeral pyres—began, but it has now become very rare.',
      'answers': [
        {'text': 'that', 'score': 0},
        {'text': 'how', 'score': 1},
        {'text': 'which', 'score': 0},
        {'text': 'who', 'score': 0}
      ]
    },
    {
      'questionText': 'If he\'d fallen from the 30th floor,',
      'answers': [
        {'text': 'he could have died.', 'score': 0},
        {'text': 'he might have died.', 'score': 0},
        {'text': 'he would have died.', 'score': 1},
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
                    " Grammar VII",
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