import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz5/result5.dart';
import 'package:untitled7/englishquizes/quiz5/quizzz5.dart';



void main() => runApp(Quiz5());

class Quiz5 extends StatelessWidget {
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
      'questionText': 'What is the correct past perfect form of "She makes some delicious cookies"?',
      'answers': [
        {'text': 'She made some delicious cookies.', 'score': 0},
        {'text': 'She had made some delicious cookies.', 'score': 1},
        {'text': 'She had make some delicious cookies.', 'score': 0},
        {'text': 'She has made some delicious cookies.', 'score': 0}
      ]
    }, {
      'questionText': 'What is the correct past perfect form of "It is hot"?',
      'answers': [
        {'text': 'It was hot.', 'score': 0},
        {'text': 'It had hot.', 'score': 0},
        {'text': 'It had be hot.', 'score': 0},
        {'text': 'It had been hot.', 'score':1}
      ]
    }, {
      'questionText': 'What is the correct past perfect form of "We can rent a car"?',
      'answers': [
        {'text': 'We had been able to rent a car.', 'score': 1},
        {'text': 'We had rented a car.', 'score': 0},
        {'text': 'We could rent a car.', 'score': 0},
        {'text': 'We\'d rent a car.', 'score': 0}
      ]
    },{
      'questionText': 'What is the correct past perfect form of "We visit Paris"?',
      'answers': [
        {'text': 'We\'d visiting Paris.', 'score': 0},
        {'text': 'We\'ve visited Paris.', 'score': 0},
        {'text': 'We\'d visited Paris.', 'score': 1},
        {'text': 'We\'d visit Paris.', 'score': 0}
      ]
    },{
      'questionText': 'What is the correct past perfect form of "I do the laundry"?',
      'answers': [
        {'text': 'I did the laundry.', 'score': 0},
        {'text': 'I had done the laundry.', 'score': 1},
        {'text': 'I had did the laundry.', 'score': 0},
        {'text': 'I have done the laundry.', 'score': 0}
      ]
    }, {
      'questionText': 'If I ___ time tonight, I will finish the novel that I am reading.',
      'answers': [
        {'text': 'will have', 'score': 0},
        {'text': 'am having', 'score': 0},
        {'text': 'has', 'score': 0},
        {'text': 'have', 'score': 1}
      ]
    },
    {
      'questionText': 'Put the words into the correct order. "If, her mother, exams, happy, be, Jane, passes, will, her,',
      'answers': [
        {'text': 'If her mother be happy Jane will passes her exams.', 'score': 0},
        {'text': 'If Jane will be happy her mother passes her exams.', 'score': 0},
        {'text': 'If Jane will passes her exams her mother are happy.', 'score': 0},
        {'text': 'If Jane passes her exams, her mother will be happy.', 'score': 1}
      ]
    },
    {
      'questionText': 'Choose the correct conditional sentence according to this sentence: "I must run faster or I will lose the race."',
      'answers': [
        {'text': 'If I must run faster, I will lose the race.', 'score': 0},
        {'text': 'If I run faster, I will win the race.', 'score': 1},
        {'text': 'If I run faster, I will lose the race.', 'score': 0},
        {'text': 'If I don\'t run faster, I will win the race.', 'score': 0}
      ]
    },
    {
      'questionText': 'If your dad\'s old games ____ work on your new computer, what ___ you do?',
      'answers': [
        {'text': 'aren\'t / will', 'score': 0},
        {'text': 'won\'t / do', 'score': 0},
        {'text': 'doesn\'t / will', 'score': 0},
        {'text': 'don\'t / will', 'score': 1}
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
                    " Grammar V",
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