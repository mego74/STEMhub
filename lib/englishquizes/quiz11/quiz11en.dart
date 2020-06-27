import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz11/result11.dart';
import 'package:untitled7/englishquizes/quiz11/quizzz11.dart';



void main() => runApp(Quiz11());

class Quiz11 extends StatelessWidget {
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

      'questionText': 'Which title best expresses the main idea of this text?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'Why Not? Improve Your Odds with Seat Belts', 'score': 1},
        {'text': 'Car Accidents: Ways That We Can Prevent Them', 'score': 0},
        {'text': 'Slow Down: Save Lives by Driving Slower', 'score': 0},
        {'text': 'Seat Belts: Wear Them to Survive Any Wreck', 'score': 0}
      ]
    }, {
      'questionText': 'Which best expresses the author\'s main purpose in this text?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'To describe what car accidents are like without seat belts', 'score': 0},
        {'text': 'To entertain readers with stories and jokes about seat belts', 'score': 0},
        {'text': 'To inform readers about seat belt laws', 'score': 0},
        {'text': 'To persuade readers to wear seat belts', 'score':1}
      ]
    }, {
      'questionText': 'Which best describes the text structure in the fourth paragraph?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'Problem and solution', 'score': 0},
        {'text': 'Sequential order', 'score': 0},
        {'text': 'Chronological order', 'score': 0},
        {'text': 'Compare and contrast', 'score': 1}
      ]
    },{
      'questionText': 'Which best defines the word alternatives as in the third paragraph?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'Being safe', 'score': 0},
        {'text': 'Being unsafe', 'score': 0},
        {'text': 'Other choices', 'score': 1},
        {'text': 'Driving fast', 'score': 0}
      ]
    },{
      'questionText': 'Which best expresses the main idea of the fifth paragraph?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'Seat belts are a waste of money.', 'score': 0},
        {'text': 'Not wearing a seat belt may cost you.', 'score': 1},
        {'text': 'People don\'t like to give money away.', 'score': 0},
        {'text': 'Seat belt laws save lives.', 'score': 0}
      ]
    }, {
      'questionText': 'Which best defines the word invincible as in the last paragraph?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'Uncool', 'score': 0},
        {'text': 'Difficult or impossible to see', 'score': 0},
        {'text': 'Glow-in-the-dark', 'score': 0},
        {'text': 'Unable to be harmed', 'score': 1}
      ]
    },
    {
      'questionText': 'Which statement would the author most likely agree with?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'You should be most concerned with your comfort.', 'score': 0},
        {'text': 'Seat belts will keep you safe in any car accident.', 'score': 0},
        {'text': 'Being safe is more important than being cool.', 'score': 1},
        {'text': 'Moving freely around a car is worth the risks.', 'score': 0}
      ]
    },
    {
      'questionText': 'Which argument is not made by the author?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'Penalties for not wearing a seat belt should increase.', 'score': 1},
        {'text': 'Not wearing a seat belt can be expensive.', 'score': 0},
        {'text': 'Seat belts keep you from flying through the windshield.', 'score': 0},
        {'text': 'Wearing a seat belt is cooler than suffering an injury.', 'score': 0}
      ]
    },
    {
      'questionText': 'Which statement would the author most likely disagree with?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'Seat belts increase your chances of being injured in a car wreck.', 'score': 1},
        {'text': 'Seat belts save lives.', 'score': 0},
        {'text': 'Every state in America has seat belt laws.', 'score': 0},
        {'text': 'You shouldn\'t drive anywhere until you are wearing your seat belt.', 'score': 0}
      ]
    },
    {
      'questionText': 'Which explains why the author starts his essay with the word click?',
      'image':'assets/images/reading3.png',
      'answers': [
        {'text': 'He is trying to scare readers.', 'score': 0},
        {'text': 'He is trying to remind readers how seat belts sound when clasped.', 'score': 0},
        {'text': 'He is trying to get the reader\'s attention.', 'score': 1},
        {'text': 'He is trying to describe what it\'s like to ride in a car.', 'score': 0}
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
                    " Reading Comprehension III",
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