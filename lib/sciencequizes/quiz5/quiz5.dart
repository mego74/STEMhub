import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz5/result5.dart';
import 'package:untitled7/sciencequizes/quiz5/quizzz5.dart';



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

      'questionText': 'What is the net force?',
      'image':'assets/images/newtonn.png',
      'answers': [
        {'text': '10 N', 'score': 0},
        {'text': '0 N', 'score': 1},
        {'text': '25 N', 'score': 0},
        {'text': '1 N', 'score': 0}
      ]
    }, {
      'questionText': 'What type of force causes these balloons to move toward or away from each other?',
      'image':'assets/images/newton21.png',
      'answers': [
        {'text': 'Gravitational', 'score': 0},
        {'text': 'Applied', 'score': 0},
        {'text': 'Magnetic', 'score': 0},
        {'text': 'Electrical', 'score':1}
      ]
    }, {
      'questionText': 'A coin placed on a card(rested at the edges of the glass) remains at rest because of',
      'image':'',
      'answers': [
        {'text': 'Inertia of rest', 'score': 0},
        {'text': 'Two forces act on the coin which balance each other', 'score': 0},
        {'text': 'No unbalanced force acts on it', 'score': 0},
        {'text': 'All of these', 'score': 1}
      ]
    },{
      'questionText': '40 Newton body is suspended in a side of ruler. After the body is about 10 cm from the axes,How to balance the ruler?',
      'image':'',
      'answers': [
        {'text': 'Attach a weight of 10N ,20 cm away from the axis', 'score': 0},
        {'text': 'Attach a weight of 10N ,10 cm away from the axis', 'score': 0},
        {'text': 'Attach a weight of 20N ,20 cm away from the axis', 'score': 1},
        {'text': 'Attach a weight of 20N ,10 cm away from the axes', 'score': 0}
      ]
    },{
      'questionText': 'Friction acts in a direction __________ to the direction of an object\'s motion',
      'image':'',
      'answers': [
        {'text': 'Unrelated', 'score': 0},
        {'text': 'Opposite', 'score': 1},
        {'text': 'Equal', 'score': 0},
        {'text': 'Perpendicular', 'score': 0}
      ]
    }, {
      'questionText': 'An astronaut on the moon will weigh one sixth of his weight on earth. Why is this?',
      'image':'',
      'answers': [
        {'text': 'The astronaut has less mass on the moon', 'score': 0},
        {'text': 'There is no force of gravity on the moon', 'score': 0},
        {'text': 'There is no atmosphere on the moon', 'score': 0},
        {'text': 'The force of gravity on the moon is one sixth that of the force of gravity on earth', 'score': 1}
      ]
    },
    {
      'questionText': 'On Earth your scales show you weigh 580 N. Your mass on moon is',
      'image':'',
      'answers': [
        {'text': '96 N', 'score': 0},
        {'text': '96 Kg', 'score': 0},
        {'text': '58 kg', 'score': 1},
        {'text': '58 N', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following sentences correctly describe the forces that operate between the Earth and the Sun?',
      'image':'',
      'answers': [
        {'text': 'The Sun and the Earth attract each other with equal forces of magnitude', 'score': 1},
        {'text': 'The force the Earth influences in order to attract the sun is smaller than the force the sun influences in order to attract the Earth', 'score': 0},
        {'text': 'The sun attracts the earth and the earth does not attract the sun', 'score': 0},
        {'text': 'The force that the Earth influences to attract the sun is greater than the force the sun influences in order to attract the Earth', 'score': 0}
      ]
    },
    {
      'questionText': 'Shahd wanted to know if the height of a ramp affected how fast the car went down it. What part of this experiment is her INDEPENDENT Variable?',
      'image':'',
      'answers': [
        {'text': 'Height of the ramp', 'score': 1},
        {'text': 'The type of car', 'score': 0},
        {'text': 'The speed of the car', 'score': 0},
        {'text': 'There isn\'t one', 'score': 0}
      ]
    },
    {
      'questionText': 'If you push against the floor, the floor will push against you with_____ force',
      'image':'',
      'answers': [
        {'text': 'more', 'score': 0},
        {'text': 'less', 'score': 0},
        {'text': 'equal', 'score': 1},
        {'text': 'zero', 'score': 0}
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
                    " Force",
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