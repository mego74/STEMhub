import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz7/result7.dart';
import 'package:untitled7/sciencequizes/quiz7/quizzz7.dart';



void main() => runApp(Quiz7());

class Quiz7 extends StatelessWidget {
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

      'questionText': 'Number 2 is pointing to',
      'image':'assets/images/biology1.png',
      'answers': [
        {'text': 'The left atrium', 'score': 0},
        {'text': 'The right atrium', 'score': 1},
        {'text': 'The right ventricle', 'score': 0},
        {'text': 'The left ventricle ', 'score': 0}
      ]
    },
    {
      'questionText': 'The tricuspid valve is indicated by number ',
      'image':'assets/images/biology1.png',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '10', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '8', 'score': 0}
      ]
    },{
      'questionText': 'Which of the following is the correct order for the passing of food through the digestive system?',
      'image':'assets/images/biology2.png',
      'answers': [
        {'text': 'mouth, stomach, large intestine, small intestine', 'score': 0},
        {'text': 'oesophagus, large intestine, stomach, small intestine', 'score': 0},
        {'text': 'mouth, oesophagus, stomach, large intestine', 'score': 1},
        {'text': 'oesophagus, small intestine, stomach, anus', 'score': 0}
      ]
    }, {
      'questionText': 'What is "H"?',
      'image':'assets/images/biology3.png',
      'answers': [
        {'text': 'Liver', 'score': 0},
        {'text': 'Stomach', 'score': 0},
        {'text': 'Gall Bladder', 'score': 1},
        {'text': 'Rectum', 'score': 0}
      ]
    }, {
      'questionText': 'What are the 5 parts of the Cardiovascular System?',
      'image':'',
      'answers': [
        {'text': 'blood vessels, heart, blood, heart & 3 blood vessels', 'score': 1},
        {'text': 'heart, blood, & 4 blood vessels', 'score': 0},
        {'text': 'heart, blood,  & 3 blood types', 'score': 0},
        {'text': 'heart, blood, and 4 blood types', 'score': 0}
      ]
    },
    {
      'questionText': 'A blood vessel that takes blood AWAY from the heart to the body’s organs is called',
      'image':'',
      'answers': [
        {'text': 'Vein', 'score': 0},
        {'text': 'Capillary', 'score': 0},
        {'text': 'Blood vessel', 'score': 0},
        {'text': 'Artery', 'score': 1}
      ]
    },
    {
      'questionText': 'What is the last step in the pathway of blood through heart?',
      'image':'',
      'answers': [
        {'text': 'Atria contract', 'score': 0},
        {'text': 'Valves between the ventricles and vessels shut', 'score': 1},
        {'text': 'Ventricles contract', 'score': 0},
        {'text': 'Valves between atria and ventricles shut', 'score': 0}
      ]
    },
    {
      'questionText': 'What is the function of bile?',
      'image':'',
      'answers': [
        {'text': 'To prevent heart-burn', 'score': 0},
        {'text': 'To produce faeces', 'score': 0},
        {'text': 'To help digest fat in the small intestine', 'score': 1},
        {'text': 'To prevent constipation', 'score': 0}
      ]
    },
    {
      'questionText': 'Proteins which speed up chemical reactions in the body are known as',
      'image':'',
      'answers': [
        {'text': 'Enzymes', 'score': 1},
        {'text': 'Pancreas', 'score': 0},
        {'text': 'Substrates', 'score': 0},
        {'text': 'Carbohydrates', 'score': 0}
      ]
    },
    {
      'questionText': 'The large intestine absorbs',
      'image':'',
      'answers': [
        {'text': 'Carbohydrates', 'score': 0},
        {'text': 'Fibre', 'score': 0},
        {'text': 'Minerals', 'score': 0},
        {'text': 'Water', 'score': 1}
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
                    " Biological Systems I",
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