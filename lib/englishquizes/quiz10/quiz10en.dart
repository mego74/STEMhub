import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz10/result10.dart';
import 'package:untitled7/englishquizes/quiz10/quizzz10.dart';



void main() => runApp(Quiz10());

class Quiz10 extends StatelessWidget {
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

      'questionText': 'When did color TVs come out?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': '1953', 'score': 1},
        {'text': '1925', 'score': 0},
        {'text': '1939', 'score': 0},
        {'text': '1965', 'score': 0}
      ]
    }, {
      'questionText': 'Which was not true about the first TV?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': 'It could only show one color.', 'score': 0},
        {'text': 'It only had 30 lines.', 'score': 0},
        {'text': 'It did not work well. ', 'score': 0},
        {'text': 'It did not have sound.', 'score':1}
      ]
    }, {
      'questionText': 'When did networks start showing programs in color?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': '1948', 'score': 0},
        {'text': '1953', 'score': 0},
        {'text': '1939', 'score': 0},
        {'text': '1965', 'score': 1}
      ]
    },{
      'questionText': 'Why did the first TV station only show Felix the Cat for two hours?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': 'They were running tests.', 'score': 1},
        {'text': 'Felix the Cat was really popular.', 'score': 0},
        {'text': 'Felix the Cat had been a big radio star.', 'score': 0},
        {'text': 'Felix the Cat was the only show that they had.', 'score': 0}
      ]
    },{
      'questionText': 'Which of these events slowed the spread of TVs?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': 'The World\'s Fair of 1939', 'score': 0},
        {'text': 'World War II', 'score': 1},
        {'text': 'The Civil War', 'score': 0},
        {'text': 'The election of the U.S. President', 'score': 0}
      ]
    }, {
      'questionText': 'What is the author\'s main purpose in writing this?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': 'He is trying to explain how a TV works.', 'score': 0},
        {'text': 'He is telling readers how TVs became popular.', 'score': 0},
        {'text': 'He is trying to get people to watch more TV.', 'score': 0},
        {'text': 'He is describing the history of the TV.', 'score': 1}
      ]
    },
    {
      'questionText': 'Why did many families switch to color TVs in 1965?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': 'Color TVs cost a lot of money.', 'score': 0},
        {'text': 'Color TVs came out in 1965.', 'score': 0},
        {'text': 'Many shows were only shown in color.', 'score': 1},
        {'text': 'World War II ended and troops returned home.', 'score': 0}
      ]
    },
    {
      'questionText': 'Why was 1939 an important year for TV?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': 'Many Americans were introduced to TV.', 'score': 1},
        {'text': 'The first color TV was released.', 'score': 0},
        {'text': 'The first TV station began broadcasting.', 'score': 0},
        {'text': 'John Baird created the first TV.', 'score': 0}
      ]
    },
    {
      'questionText': 'How many lines does a 4K TV have?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': '3,840', 'score': 1},
        {'text': '30', 'score': 0},
        {'text': '1,080', 'score': 0},
        {'text': '4,000', 'score': 0}
      ]
    },
    {
      'questionText': 'Which happened first?',
      'image':'assets/images/reading2.png',
      'answers': [
        {'text': 'The 1939 World\'s Fair', 'score': 1},
        {'text': 'The release of high-def TVs', 'score': 0},
        {'text': 'The end of World War II', 'score': 0},
        {'text': 'The release of color TVs', 'score': 0}
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
                    " Reading Comprehension II",
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