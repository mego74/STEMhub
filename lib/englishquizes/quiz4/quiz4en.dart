import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz4/result4.dart';
import 'package:untitled7/englishquizes/quiz4/quizzz4.dart';



void main() => runApp(Quiz4());

class Quiz4 extends StatelessWidget {
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
      'questionText': 'Elvis Presley ____ many great songs.',
      'answers': [
        {'text': 'is singing', 'score': 0},
        {'text': 'sang', 'score': 1},
        {'text': 'was sung', 'score': 0},
        {'text': 'sings', 'score': 0}
      ]
    }, {
      'questionText': 'Nobody ____ the school uniforms yesterday.',
      'answers': [
        {'text': 'wear', 'score': 0},
        {'text': 'didn\'t wear', 'score': 0},
        {'text': 'was wear', 'score': 0},
        {'text': 'wore', 'score':1}
      ]
    }, {
      'questionText': 'The teachers ____ around the table when I ____ the teacher’s room.',
      'answers': [
        {'text': 'were sitting / entered', 'score': 1},
        {'text': 'sat / was entering', 'score': 0},
        {'text': 'are sitting / entered', 'score': 0},
        {'text': 'were sat / was entering', 'score': 0}
      ]
    },{
      'questionText': 'One of the teachers ____ my opinion about extra courses on Saturdays.',
      'answers': [
        {'text': 'was asking', 'score': 0},
        {'text': 'were asking', 'score': 0},
        {'text': 'asked', 'score': 1},
        {'text': 'were asked', 'score': 0}
      ]
    },{
      'questionText': 'I ____ to say anything because I ____ new there.',
      'answers': [
        {'text': 'don’t want / was', 'score': 0},
        {'text': 'didn’t want / was', 'score': 1},
        {'text': 'didn’t want / am', 'score': 0},
        {'text': 'don’t want / was being', 'score': 0}
      ]
    }, {
      'questionText': 'I ____ up and ____ the teacher’s room quietly while the teachers ____ extra courses on Saturdays lively.',
      'answers': [
        {'text': 'was standing / was leaving / still discussed', 'score': 0},
        {'text': 'stood / left / still discussed', 'score': 0},
        {'text': 'was standing / left / were still discussing', 'score': 0},
        {'text': 'stood / left / were still discussing', 'score': 1}
      ]
    },
    {
      'questionText': 'My father ____ the bushes in the garden while we ____.',
      'answers': [
        {'text': 'pruned / played', 'score': 0},
        {'text': 'was pruning / were playing', 'score': 1},
        {'text': 'prunes / played', 'score': 0},
        {'text': 'were pruning / was playing', 'score': 0}
      ]
    },
    {
      'questionText': 'I ____ that some flowers _____.',
      'answers': [
        {'text': 'was noticing / were bloomed', 'score': 0},
        {'text': 'noticed / was blooming', 'score': 0},
        {'text': 'was noticing / were blooming', 'score': 0},
        {'text': 'noticed / were blooming', 'score': 1}
      ]
    },
    {
      'questionText': 'One of my friends ___ while he ____ the biggest tree in our garden.',
      'answers': [
        {'text': 'was fell down / was climbing', 'score': 0},
        {'text': 'fell down / climbs', 'score': 0},
        {'text': 'was falling down / climbed', 'score': 0},
        {'text': 'fell down / was climbing', 'score': 1}
      ]
    },
    {
      'questionText': 'He ___ still ____ when the ambulance _____.',
      'answers': [
        {'text': 'is / crying / arrived', 'score': 0},
        {'text': 'was / crying / arriving', 'score': 0},
        {'text': 'was / crying / arrived', 'score': 1},
        {'text': 'did / cry / arriving', 'score': 0}
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
                    " Grammar IV",
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