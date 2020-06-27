import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz13/result13.dart';
import 'package:untitled7/englishquizes/quiz13/quizzz13.dart';



void main() => runApp(Quiz13());

class Quiz13 extends StatelessWidget {
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
      'questionText': 'The story ____ some truly horrible events to take place in the the not too distant future.',
      'answers': [
        {'text': 'prefixed', 'score': 0},
        {'text': 'foreshadowed', 'score': 1},
        {'text': 'deactivated', 'score': 0},
        {'text': 'interacted', 'score': 0}
      ]
    }, {
      'questionText': 'A prefix goes ____ of a word.',
      'answers': [
        {'text': 'at the end', 'score': 0},
        {'text': 'at the beginning', 'score': 1},
        {'text': 'in the middle', 'score': 0},
        {'text': 'None of the above', 'score':0}
      ]
    }, {
      'questionText': 'A suffix goes ____ of a word.',
      'answers': [
        {'text': 'at the end', 'score': 1},
        {'text': 'at the beginning', 'score': 0},
        {'text': 'in the middle', 'score': 0},
        {'text': 'None of the above', 'score':0}
      ]
    },{
      'questionText': 'People who suffer from allergies often take a type of medicine called an antihistamine. What does an antihistamine do?',
      'answers': [
        {'text': 'It works with histamines.', 'score': 0},
        {'text': 'It combines with histamines.', 'score': 0},
        {'text': 'It acts against histamines.', 'score': 1},
        {'text': 'It increases the amount of histamines.', 'score': 0}
      ]
    },{
      'questionText': 'Mom had to intervene when my sister and I started to argue over the remote. The prefix inter- in the word intervene means ____.',
      'answers': [
        {'text': 'into', 'score': 0},
        {'text': 'between', 'score': 1},
        {'text': 'above', 'score': 0},
        {'text': 'over', 'score': 0}
      ]
    }, {
      'questionText': 'The prefix "un" means\nex. undo, untie',
      'answers': [
        {'text': 'does not', 'score': 0},
        {'text': 'full of', 'score': 0},
        {'text': 'without', 'score': 0},
        {'text': 'not', 'score': 1}
      ]
    },
    {
      'questionText': 'What does the word "quickly" mean in the following sentence?\nShe was walking quickly down the hallway to get to her classroom.',
      'answers': [
        {'text': 'one who is quick', 'score': 0},
        {'text': 'quick again', 'score': 0},
        {'text': 'most quick', 'score': 0},
        {'text': 'in a quick way', 'score': 1}
      ]
    },
    {
      'questionText': 'What is an idiom?',
      'answers': [
        {'text': 'expression, word, or phrase that has a figurative meaning', 'score': 1},
        {'text': 'figure of speech in which a word is applied to and object', 'score': 0},
        {'text': 'joke exploiting the different possible meanings of a word', 'score': 0},
        {'text': 'personal nature or human characteristics to something nonhuman', 'score': 0}
      ]
    },
    {
      'questionText': 'What does this idiom mean? (a dime a dozen)',
      'answers': [
        {'text': 'you\'re the same as everybody else', 'score': 0},
        {'text': 'it\'s a dime for a dozen eggs', 'score': 0},
        {'text': 'you\'re one of a kind', 'score': 1},
        {'text': 'it\'s 1 billion dollars for a carton of eggs!!!!!!!!!!', 'score': 0}
      ]
    },
    {
      'questionText': 'What does this idiom mean? (feeling blue)',
      'answers': [
        {'text': 'feeling happy', 'score': 0},
        {'text': 'feeling excited', 'score': 0},
        {'text': 'feeling sick', 'score': 0},
        {'text': 'feeling sad', 'score': 1}
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
                    " General Vocab II",
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