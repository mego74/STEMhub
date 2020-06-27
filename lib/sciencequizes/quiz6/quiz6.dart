import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz6/result6.dart';
import 'package:untitled7/sciencequizes/quiz6/quizzz6.dart';



void main() => runApp(Quiz6());

class Quiz6 extends StatelessWidget {
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

      'questionText': 'The graph shows how the velocity of an object is changing as it accelerates. What is its velocity after 20 seconds?',
      'image':'assets/images/motionn.png',
      'answers': [
        {'text': '40 m/s', 'score': 0},
        {'text': '60 m/s', 'score': 1},
        {'text': '7 m/s', 'score': 0},
        {'text': '80 m/s', 'score': 0}
      ]
    }, {
      'questionText': 'A cyclist travelled along a straight track. A graph of its motion was then drawn.What was the speed of the cyclist?',
      'image':'assets/images/motion21.png',
      'answers': [
        {'text': '5 m/s', 'score': 1},
        {'text': '40 m/s', 'score': 0},
        {'text': '10 m/s', 'score': 0},
        {'text': '0.2 m/s', 'score': 0}
      ]
    }, {
      'questionText': 'Using the distance-time graph shown, what is the distance travelled after 5 seconds?',
      'image':'assets/images/motion33.png',
      'answers': [
        {'text': '20 metres', 'score': 0},
        {'text': '15 metres', 'score': 0},
        {'text': '10 metres', 'score': 1},
        {'text': '2.25 metres', 'score': 0}
      ]
    },{
      'questionText': 'A cart is moving to east with constant speed "Forces are equal". Which describes the forces and motion of the cart?',
      'image':'assets/images/motion55.png',
      'answers': [
        {'text': 'Unbalanced Forces, Constant Speed', 'score': 0},
        {'text': 'Balanced Forces, Acceleration', 'score': 0},
        {'text': 'Balanced Forces, Constant Speed', 'score': 1},
        {'text': 'Unbalanced Forces, Acceleration', 'score': 0}
      ]
    },{
      'questionText': 'A cyclist travelling at a speed of 25 m/s slows down to 10 m/s in a time of 10 seconds. What is his decelleration?',
      'image':'',
      'answers': [
        {'text': '25 m/s²', 'score': 0},
        {'text': '10 m/s²', 'score': 0},
        {'text': '1.5 m/s²', 'score': 1},
        {'text': '3.5 m/s²', 'score': 0}
      ]
    }, {
      'questionText': 'For a space rocket to break free from the earth\'s gravity, its velocity must be greater than its',
      'image':'',
      'answers': [
        {'text': 'Terminal velocity', 'score': 0},
        {'text': 'Cruising velocity', 'score': 0},
        {'text': 'Initial velocity', 'score': 0},
        {'text': 'Escape velocity', 'score': 1}
      ]
    },
    {
      'questionText': 'A place or object used for comparison to determine if another object is in motion is called a',
      'image':'',
      'answers': [
        {'text': 'Comparison point', 'score': 0},
        {'text': 'Reference point', 'score': 1},
        {'text': 'Point of view', 'score': 0},
        {'text': 'Motion detector', 'score': 0}
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
                    " Motion",
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