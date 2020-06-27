import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz11/result11.dart';
import 'package:untitled7/sciencequizes/quiz11/quizzz11.dart';

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
      'questionText': 'The green coloured pigment that is necessary for photosynthesis to take place is called',
      'answers': [
        {'text': 'Phloem', 'score': 0},
        {'text': 'Cytoplasm', 'score': 0},
        {'text': 'Chloroplast', 'score': 0},
        {'text': 'Chlorophyll', 'score': 1}
      ]
    }, {
      'questionText': 'Which one of the following sentences is true?',
      'answers': [
        {'text': 'Photosynthesis is the process of planta breathing', 'score': 0},
        {'text': 'Plants do not breathe but perform photosynthesis', 'score': 0},
        {'text': 'Plants perform photosynthesis during the day while it breathes at night', 'score': 0},
        {'text': 'Plants breathe all the time and perform photosynthesis when light is present', 'score':1}
      ]
    }, {
      'questionText': 'Where in the plant does photosynthesis take place?',
      'answers': [
        {'text': 'In the chloroplasts', 'score': 1},
        {'text': 'In cells of the roots', 'score': 0},
        {'text': 'In the nucleus', 'score': 0},
        {'text': 'In the vacuoles', 'score': 0}
      ]
    },{
      'questionText': 'What are the products of photosynthesis?',
      'answers': [
        {'text': 'Water and carbon dioxide', 'score': 0},
        {'text': 'Oxygen and glucose', 'score': 1},
        {'text': 'Oxygen and carbon dioxide', 'score': 0},
        {'text': 'Oxygen and water', 'score': 0}
      ]
    },{
      'questionText': 'The reactants of photosynthesis are',
      'answers': [
        {'text': 'Sugar and water', 'score': 0},
        {'text': 'Carbon dioxide and water', 'score': 1},
        {'text': 'Sugar and oxygen', 'score': 0},
        {'text': 'Carbon dioxide and oxygen', 'score': 0}
      ]
    }, {
      'questionText': 'What is the name of the chemical where the energy is stored during the first phase of photosynthesis?',
      'answers': [
        {'text': 'Oxygen', 'score': 0},
        {'text': 'Chlorophyll', 'score': 0},
        {'text': 'Carbon dioxide', 'score': 0},
        {'text': 'ATP', 'score': 1}
      ]
    },
    {
      'questionText': 'Photosynthesis is responsible for the world\'s oxygen supply which is needed for animals to survive.',
      'answers': [
        {'text': 'TRUE', 'score': 1},
        {'text': 'FALSE', 'score': 0}
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
                    " Photosynthesis",
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