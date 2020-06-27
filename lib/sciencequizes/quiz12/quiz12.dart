import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz12/result12.dart';
import 'package:untitled7/sciencequizes/quiz12/quizzz12.dart';

void main() => runApp(Quiz12());

class Quiz12 extends StatelessWidget {
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
      'questionText': 'A converging lens of focal length 12 cm is combined with a diverging lens of focal length 18 cm. The focal length of the combination is?',
      'answers': [
        {'text': '30 cm', 'score': 0},
        {'text': '36.5 cm', 'score': 0},
        {'text': '24 cm', 'score': 0},
        {'text': '36 cm', 'score': 1}
      ]
    }, {
      'questionText': 'Which of the following statements is correct?',
      'answers': [
        {'text': 'A virtual image and a real image can both be formed on a screen.', 'score': 0},
        {'text': 'A virtual image can be formed on a screen, a real image cannot.', 'score': 0},
        {'text': 'A real image can be seen, a virtual image cannot.', 'score': 0},
        {'text': 'The reflected light passes through a real image but not through a virtual image.', 'score':1}
      ]
    }, {
      'questionText': 'The _______ of a light wave is how fast it goes up and down',
      'answers': [
        {'text': 'Frequency', 'score': 1},
        {'text': 'Wavelength', 'score': 0},
        {'text': 'Period', 'score': 0},
        {'text': 'Amplitude', 'score': 0}
      ]
    },{
      'questionText': 'If a wave has a low frequency it will have a ______',
      'answers': [
        {'text': 'Short wavelength', 'score': 0},
        {'text': 'Long wavelength', 'score': 1},
        {'text': 'Low amplitude', 'score': 0},
        {'text': 'High amplitude', 'score': 0}
      ]
    },{
      'questionText': 'What color will we see if an object is absorbing all of the colors of light?',
      'answers': [
        {'text': 'White', 'score': 0},
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 0},
        {'text': 'Blue', 'score': 0}
      ]
    }, {
      'questionText': 'Which of the following electromagnetic waves are invisible to the human eye?',
      'answers': [
        {'text': 'Microwaves', 'score': 0},
        {'text': 'Infrared rays', 'score': 0},
        {'text': 'X-rays', 'score': 0},
        {'text': 'All of the above', 'score': 1}
      ]
    },
    {
      'questionText': 'When an object is placed on the focal point in front of a convex lens, the image produced is ___',
      'answers': [
        {'text': 'real, reduced, and inverted', 'score': 0},
        {'text': 'There is no image', 'score': 1},
        {'text': 'real, enlarged, and inverted', 'score': 0},
        {'text': 'real, true, and inverted', 'score': 0}
      ]
    },
    {
      'questionText': 'When an object is placed between the focal point and the convex lens, the image produced is ___',
      'answers': [
        {'text': 'real, reduced, and inverted', 'score': 0},
        {'text': 'virtual, enlarged, and upright', 'score': 1},
        {'text': 'real, enlarged, and inverted', 'score': 0},
        {'text': 'virtual, reduced, and upright', 'score': 0}
      ]
    },
    {
      'questionText': 'A real image is ___',
      'answers': [
        {'text': 'is produced by real rays and can be projected on a screen', 'score': 1},
        {'text': 'produced by virtual rays and can be projected on a screen', 'score': 0},
        {'text': 'is produced by virtual images and cannot be projected on a screen', 'score': 0},
        {'text': 'is produced by real rays and cannot be projected on a screen', 'score': 0}
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
                    " Mirrors & Lenses",
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