import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz8/result8.dart';
import 'package:untitled7/englishquizes/quiz8/quizzz8.dart';



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
      'questionText': 'If she got your message,',
      'answers': [
        {'text': 'she\'d definitely be here later.', 'score': 0},
        {'text': 'she\'ll definitely be here later.', 'score': 1},
        {'text': 'she\'d have been here later.', 'score': 0},
      ]
    }, {
      'questionText': 'If you were offered a well-paid job in another country,',
      'answers': [
        {'text': 'would you take it?', 'score': 1},
        {'text': 'would you have taken it?', 'score': 0},
        {'text': 'will you take it?', 'score': 0},
      ]
    }, {
      'questionText': 'If we hadn\'t been in such a hurry,',
      'answers': [
        {'text': 'we wouldn\'t have forgotten the sandwiches.', 'score': 1},
        {'text': 'we would have forgotten the sandwiches.', 'score': 0},
        {'text': 'we didn\'t forget the sandwiches.', 'score': 0},
      ]
    },{
      'questionText': 'I\'d have given her a lift',
      'answers': [
        {'text': 'if I had known she needed one.', 'score': 1},
        {'text': 'if I hadn\'t known she needed one.', 'score': 0},
        {'text': 'If I knew she needed one.', 'score': 0},
      ]
    },{
      'questionText': '1.	If they hadn\'t received your application,',
      'answers': [
        {'text': 'your name won\'t be on the list.', 'score': 0},
        {'text': 'your name wouldn\'t be on the list.', 'score': 1},
        {'text': 'your name would be on the list.', 'score': 0},
      ]
    }, {
      'questionText': 'Every year at least five house ____ in our neighborhood.',
      'answers': [
        {'text': 'were robbed', 'score': 0},
        {'text': 'are robbing', 'score': 0},
        {'text': 'rob', 'score': 0},
        {'text': 'are robbed', 'score': 1}
      ]
    },
    {
      'questionText': 'My father was a worker but he ____ to manager last year.',
      'answers': [
        {'text': 'promoted', 'score': 0},
        {'text': 'was promoted', 'score': 1},
        {'text': 'were promoted', 'score': 0},
        {'text': 'has promoted', 'score': 0}
      ]
    },
    {
      'questionText': 'Choose the correct active form of this sentence: "Chocolate is loved by everybody."',
      'answers': [
        {'text': 'Everybody is loving chocolate.', 'score': 0},
        {'text': 'Everybody is love chocolate.', 'score': 0},
        {'text': 'Everybody loves chocolate.', 'score': 1},
        {'text': 'Chocolate loves everybody.', 'score': 0}
      ]
    },
    {
      'questionText': 'William Shakespeare ____ as the one of the greatest writers in English literature history.',
      'answers': [
        {'text': 'has known', 'score': 0},
        {'text': 'was known', 'score': 0},
        {'text': 'knew', 'score': 0},
        {'text': 'is known', 'score': 1}
      ]
    },
    {
      'questionText': 'Wine ____ from grapes.',
      'answers': [
        {'text': 'makes', 'score': 0},
        {'text': 'are made', 'score': 0},
        {'text': 'was made', 'score': 0},
        {'text': 'is made', 'score': 1}
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
                    " Grammar VIII",
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