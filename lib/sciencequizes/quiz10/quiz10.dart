import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz10/result10.dart';
import 'package:untitled7/sciencequizes/quiz10/quizzz10.dart';



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

      'questionText': 'The diagram shows a plant cell. Identify parts A and B',
      'image':'assets/images/cell1.png',
      'answers': [
        {'text': 'A = cell membrane and B = nucleus', 'score': 0},
        {'text': 'A = vacuole and B = nucleus', 'score': 0},
        {'text': 'A = cell wall and B = cytoplasm', 'score': 0},
        {'text': 'A = cell wall and B = nucleus', 'score': 1}
      ]
    },
    {
      'questionText': 'The diagram shows a group of onion cells. The parts labelled A, B and C respectively are',
      'image':'assets/images/cell2.png',
      'answers': [
        {'text': 'A = nucleus, B = cell wall, C = cytoplasm', 'score': 0},
        {'text': 'A = cell wall, B = cytoplasm, C = membrane', 'score': 0},
        {'text': 'A = cell wall, B = cytoplasm, C = nucleus', 'score': 1},
        {'text': 'A = cytoplasm, B = cell wall, C = nucleus', 'score': 0}
      ]
    },{
      'questionText': 'The green part of the cell labelled X in the diagram is known as',
      'image':'assets/images/cell3.png',
      'answers': [
        {'text': 'Chloroplast', 'score': 1},
        {'text': 'Cytoplasm', 'score': 0},
        {'text': 'Cell nucleus', 'score': 0},
        {'text': 'Cell membrane', 'score': 0}
      ]
    }, {
      'questionText': 'The diagram shows a plant cell as seen under a microscope. Two of the labels are incorrect. What are they?',
      'image':'assets/images/cell4.png',
      'answers': [
        {'text': 'Vacuole and cytoplasm', 'score': 0},
        {'text': 'Cell wall and cell membrane', 'score': 0},
        {'text': 'Vacuole and chloroplast', 'score': 1},
        {'text': 'Nucleus and chloroplast', 'score': 0}
      ]
    }, {
      'questionText': 'What cell part is NOT found in all cells?',
      'image':'',
      'answers': [
        {'text': 'Cell Wall', 'score': 1},
        {'text': 'Cell Membrane', 'score': 0},
        {'text': 'Cytoplasm', 'score': 0},
        {'text': 'Genetic Material', 'score': 0}
      ]
    },
    {
      'questionText': 'The function of the nucleus in the cell is to',
      'image':'',
      'answers': [
        {'text': 'Provide shape and support to the cell', 'score': 0},
        {'text': 'Control the activities of the cell', 'score': 1},
        {'text': 'Organise the cell into tissues', 'score': 0},
        {'text': 'Control what enters and leaves the cell', 'score': 0}
      ]
    },
    {
      'questionText': 'Which one of the following statements is correct?',
      'image':'',
      'answers': [
        {'text': 'Cells form organs, and organs form tissues', 'score': 0},
        {'text': 'Cells form tissue, and systems form organs', 'score': 0},
        {'text': 'Tissues form organs, and organs form systems', 'score': 1},
        {'text': 'VCells form systems, and systems form organs', 'score': 0}
      ]
    },
    {
      'questionText': 'This organelle is in all eukaryotic cells. It is the control center of the cell because it holds the DNA.',
      'image':'',
      'answers': [
        {'text': 'Mitochondria', 'score': 0},
        {'text': 'Chloroplasts', 'score': 0},
        {'text': 'Nucleus', 'score': 1},
        {'text': 'Ribosomes', 'score': 0}
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
                    " Cell Structure",
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