import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/mathquizes/quiz6/result6.dart';
import 'package:untitled7/mathquizes/quiz6/quizzz6.dart';

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
      'questionText': 'The scale of a map is 1:35000. What actual distance in meters corresponds to 3 centimeters on the map?',
      'answers': [
        {'text': '105 m', 'score': 0},
        {'text': '1050 m', 'score': 1},
        {'text': '10500 m', 'score': 0},
        {'text': '10.5 m', 'score': 0}
      ]
    }, {
      'questionText': '8 girls and 12 boys can finish work in 10 days while 6 girls and 8 boys can finish it in 14 days. Find the time taken by the one girl alone that by one boy alone to finish the work',
      'answers': [
        {'text': '120 , 130', 'score': 0},
        {'text': '100 , 120', 'score': 0},
        {'text': '240 , 280', 'score': 0},
        {'text': '140 , 280', 'score':1}
      ]
    }, {
      'questionText': 'Present age of Ahmed and Omar are in ratio of 3:4 respectively. After 5 years, the ratio of their ages becomes 7:9 respectively. What is Omar’s present age?',
      'answers': [
        {'text': '40 years', 'score': 1},
        {'text': '28 years', 'score': 0},
        {'text': '32 years', 'score': 0},
        {'text': '36 years', 'score': 0}
      ]
    },{
      'questionText': 'The present ages of A, B and C are in proportions 4:5:9. Nine years ago, sum of their ages was 45 years. Find their present ages in years.',
      'answers': [
        {'text': '15,20,35', 'score': 0},
        {'text': '20,24,36', 'score': 0},
        {'text': '16,20,36', 'score': 1},
        {'text': '20,25,45', 'score': 0}
      ]
    },{
      'questionText': 'In a library, the ratio of the books on Computer, Physics and Mathematics is 5:7:8. If the collection of books is increased respectively by 40%, 50% and 75%, find out the new ratio',
      'answers': [
        {'text': '3:9:5', 'score': 0},
        {'text': '2:3:4', 'score': 1},
        {'text': '7:5:3', 'score': 0},
        {'text': '2:5:4', 'score': 0}
      ]
    }, {
      'questionText': 'The ratio of the speed of two trains is 7:8. If the second train covers 400 km in 4 h, find out the speed of the first train',
      'answers': [
        {'text': '69.4 km/h', 'score': 0},
        {'text': '78.6 km/h', 'score': 0},
        {'text': '40.5 km/h', 'score': 0},
        {'text': '87.5 km/h', 'score': 1}
      ]
    },
    {
      'questionText': 'If (x:y) = 2:1, then (x²-y²):(x²+y²) =',
      'answers': [
        {'text': '1:2', 'score': 0},
        {'text': '3:5', 'score': 1},
        {'text': '2:1', 'score': 0},
        {'text': '5:4', 'score': 0}
      ]
    },
    {
      'questionText': 'In a party, 60% of the invited guests are male and 40% are female. If 80% of the invited guests attended the party and if all the invited female guests attended, what would be the ratio of males to females among the attendees in the party?',
      'answers': [
        {'text': '2:3', 'score': 0},
        {'text': '3:2', 'score': 0},
        {'text': '2:1', 'score': 0},
        {'text': '1:1', 'score': 1}
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
                    " Ratio & Proportion",
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