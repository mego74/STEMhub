import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz10/result10.dart';
import 'package:untitled7/mathquizes/quiz10/quizzz10.dart';

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
      'questionText': 'At Dunkin Donuts the number of donut holes in a bag can vary. Help Donald find the mode.\n12,10,10,10,13,12,11,13,10',
      'answers': [
        {'text': '10', 'score': 1},
        {'text': '11', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '13', 'score': 0}
      ]
    }, {
      'questionText': 'Dr. Dre is a dentist. He needs to report on the average number of cavities that his patients have.\n1,0,1,5,6,3,4',
      'answers': [
        {'text': '3.33', 'score': 0},
        {'text': '3.5', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '2.85', 'score':1}
      ]
    }, {
      'questionText': 'If the average of ( 8 , 9 , 10 . 12 . X ) is 15 . Find the value of X',
      'answers': [
        {'text': '42', 'score': 0},
        {'text': '36', 'score': 1},
        {'text': '26', 'score': 0},
        {'text': '18', 'score': 0}
      ]
    },{
      'questionText': 'Find the range of the data set\n1.43,1.05,34,56,89,1.1',
      'answers': [
        {'text': '87.57', 'score': 0},
        {'text': '87.9', 'score': 0},
        {'text': '87.95', 'score': 1},
        {'text': '89', 'score': 0}
      ]
    },{
      'questionText': 'Find the median, mode and range:\n3, 5, 7, 9, 11, 8, 3',
      'answers': [
        {'text': 'median:7  mode:3 range:5', 'score': 0},
        {'text': 'median:7  mode:3  range:8', 'score': 1},
        {'text': 'median:7  mode:3 range:4', 'score': 0},
        {'text': 'median:6  mode:3  range:7', 'score': 0}
      ]
    }, {
      'questionText': 'What do you do if there are two numbers in "the middle" when you are finding the median?',
      'answers': [
        {'text': 'They are both the median', 'score': 0},
        {'text': 'Pick your favorite number', 'score': 0},
        {'text': 'Add the two numbers in the middle & then divide by two', 'score': 1},
        {'text': 'None of the above', 'score': 0},
      ]
    },
    {
      'questionText': 'The number of pages that Carolyn wrote in her journal each day from Monday to Friday is shown below:\n9, 8, 12, 6, 10\nWhat is the mean number of pages she wrote per day?',
      'answers': [
        {'text': '5', 'score': 0},
        {'text': '11', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '9', 'score': 1}
      ]
    },
    {
      'questionText': 'Five boys were weighed in pairs(Two boys are weighed together each time).The following results were obtained:\n90 – 92 – 93 – 94 -95 -96 -97 -98 -100 – 101 kg.\nWhat is the total weight of the five boys ?',
      'answers': [
        {'text': '239 kg', 'score': 1},
        {'text': '250 kg', 'score': 0},
        {'text': '241 kg', 'score': 0},
        {'text': '248 kg', 'score': 0}
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
                    " Statistics I",
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