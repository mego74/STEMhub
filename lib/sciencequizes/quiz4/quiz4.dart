import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz4/result4.dart';
import 'package:untitled7/sciencequizes/quiz4/quizzz4.dart';

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
      'questionText': 'Light from the Sun reaches us in nearly',
      'answers': [
        {'text': '2 minutes', 'score': 0},
        {'text': '4 minutes', 'score': 0},
        {'text': '8 minutes', 'score': 1},
        {'text': '16 minutes', 'score': 0}
      ]
    }, {
      'questionText': 'How many constellations are officially recognized?',
      'answers': [
        {'text': '12', 'score': 0},
        {'text': '88', 'score': 1},
        {'text': '158', 'score': 0},
        {'text': 'Over a million', 'score': 0}
      ]
    }, {
      'questionText': 'The stellar and solar source of energy is',
      'answers': [
        {'text': 'Nuclear fusion', 'score': 1},
        {'text': 'Nuclear fission', 'score': 0},
        {'text': 'Electromagnetic induction', 'score': 0},
        {'text': 'Electromotive force', 'score': 0}
      ]
    },{
      'questionText': 'Which of the following planets has the largest number of moons?',
      'answers': [
        {'text': 'Saturn', 'score': 1},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Mars', 'score': 0},
        {'text': 'Neptune', 'score': 0}
      ]
    },{
      'questionText': 'The planet which completes one revolution in 88 days around the Sun is',
      'answers': [
        {'text': 'Mercury', 'score': 1},
        {'text': 'Venus', 'score': 0},
        {'text': 'Mars', 'score': 0},
        {'text': 'Saturn', 'score': 0}
      ]
    }, {
      'questionText': 'What is the cause of seasons?',
      'answers': [
        {'text': 'The sun\'s position in between the Earth and Moon', 'score': 0},
        {'text': 'The Earth\'s position relative to the sun and it\'s tilt', 'score': 1},
        {'text': 'The moon\'s relative position to the sun and the tilt on its axis', 'score': 0},
        {'text': 'The sun\'s revolution around the Earth and Moon', 'score': 1}
      ]
    },
    {
      'questionText': 'What is the Earth\'s axis?',
      'answers': [
        {'text': 'The imaginary circle around the middle of the Earth', 'score': 1},
        {'text': 'The imaginary line dividing the America\'s and Europe and Africa', 'score': 0},
        {'text': 'The imaginary line that passes through the poles that the Earth rotates on', 'score': 0},
        {'text': 'The term axis refers to the Earth\'s poles', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following statements describes comets?',
      'answers': [
        {'text': 'Found in the kupier belt, made of ice and dust, and have elliptical orbits', 'score': 1},
        {'text': 'Large rocky bodies full of craters that revolve around planets', 'score': 0},
        {'text': 'Rocky bodies that orbit in the asteroid belt, vary in size and shape', 'score': 0},
        {'text': 'Chunks of rock moving around the solar system', 'score': 0}
      ]
    },
    {
      'questionText': 'As an objects mass increases its gravity _________.',
      'answers': [
        {'text': 'Stops until the object stops growing', 'score': 0},
        {'text': 'Increases, but returns to normal gravity after the object stops growing', 'score': 0},
        {'text': 'Increases', 'score': 1},
        {'text': 'Decreases', 'score': 0}
      ]
    },
    {
      'questionText': 'What is an equinox?',
      'answers': [
        {'text': 'The two times during the fall and spring that the northern hemisphere is tilted toward the sun', 'score': 1},
        {'text': 'The two times during the fall and spring that there is equal light over the whole Earth', 'score': 0},
        {'text': 'The time in the summer that the northern hemisphere is tilted toward the sun', 'score': 0},
        {'text': 'The time in the summer that the southern hemisphere is tilted toward the sun', 'score': 0}
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
                    " Astronomy",
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