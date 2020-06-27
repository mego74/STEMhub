import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz15/result15.dart';
import 'package:untitled7/sciencequizes/quiz15/quizzz15.dart';

void main() => runApp(Quiz15());

class Quiz15 extends StatelessWidget {
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
      'questionText': 'What is the correct order of earth\'s atmospheric layers from bottom to top?',
      'answers': [
        {'text': 'Stratosphere, Mesosphere, Troposphere, Thermosphere, Exosphere.', 'score': 0},
        {'text': 'Stratosphere, Troposphere, Mesosphere, Thermosphere, Exosphere.', 'score': 0},
        {'text': 'Troposphere, Mesosphere, Stratosphere, Thermosphere, Exosphere.', 'score': 0},
        {'text': 'Troposphere, Stratosphere, Mesosphere, Thermosphere, Exosphere.', 'score': 1}
      ]
    }, {
      'questionText': 'Which layer of the atmosphere has the highest density of gas molecules?',
      'answers': [
        {'text': 'Exosphere', 'score': 0},
        {'text': 'Mesosphere', 'score': 0},
        {'text': 'Troposphere', 'score': 0},
        {'text': 'Stratosphere', 'score':1}
      ]
    }, {
      'questionText': 'What two gases are found throughout all layers of the atmosphere?',
      'answers': [
        {'text': 'Nitrogen and oxygen', 'score': 1},
        {'text': 'Nitrogen and carbon dioxide', 'score': 0},
        {'text': 'Oxygen and carbon dioxide', 'score': 0},
        {'text': 'Trace gases and water vapor', 'score': 0}
      ]
    },{
      'questionText': 'Which two atmospheric layers have temperature profiles that promote convection?',
      'answers': [
        {'text': 'Mesosphere and Stratosphere', 'score': 0},
        {'text': 'Mesosphere and Troposphere', 'score': 1},
        {'text': 'Mesosphere and Thermosphere', 'score': 0},
        {'text': 'Stratosphere and Thermosphere', 'score': 0}
      ]
    },{
      'questionText': 'What instrument is used to measure air pressure?',
      'answers': [
        {'text': 'Radiosonde', 'score': 0},
        {'text': 'Barometer', 'score': 1},
        {'text': 'Seismograph', 'score': 0},
        {'text': 'Volt meter', 'score': 0}
      ]
    }, {
      'questionText': 'The greenhouse effect causes the Earth\'s air to',
      'answers': [
        {'text': 'turn brown', 'score': 0},
        {'text': 'blow up', 'score': 0},
        {'text': 'cool down', 'score': 0},
        {'text': 'heat up', 'score': 1}
      ]
    },
    {
      'questionText': 'What percentage of our atmosphere is made up of other gases such as argon, water vapor, and carbon dioxide?',
      'answers': [
        {'text': '1%', 'score': 1},
        {'text': '21%', 'score': 0},
        {'text': '78%', 'score': 0},
        {'text': '90%', 'score': 0},
      ]
    },
    {
      'questionText': 'What frequencies of electromagnetic radiation are most abundantly emitted by the earth?',
      'answers': [
        {'text': 'Microwaves', 'score': 0},
        {'text': 'Infrared light', 'score': 1},
        {'text': 'Ultraviolet light', 'score': 0},
        {'text': 'Visible light', 'score': 0},
      ]
    },
    {
      'questionText': 'Which layer of the atmosphere contains the ozone layer?',
      'answers': [
        {'text': 'Exosphere', 'score': 0},
        {'text': 'Mesosphere', 'score': 0},
        {'text': 'Stratosphere', 'score': 1},
        {'text': 'Troposphere', 'score': 0},
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
                    " Atmosphere",
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