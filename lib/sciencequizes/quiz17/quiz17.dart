import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz17/result17.dart';
import 'package:untitled7/sciencequizes/quiz17/quizzz17.dart';

void main() => runApp(Quiz17());

class Quiz17 extends StatelessWidget {
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
      'questionText': 'The study of the way that characteristics are passed on from one generation to the next is called ______',
      'answers': [
        {'text': 'pollination', 'score': 0},
        {'text': 'phonetics', 'score': 0},
        {'text': 'fertilization', 'score': 0},
        {'text': 'genetics', 'score': 1}
      ]
    }, {
      'questionText': 'Which one of the following diseases can be inherited?',
      'answers': [
        {'text': 'E-coli', 'score': 0},
        {'text': 'Salmonella', 'score': 0},
        {'text': 'Pneumonia', 'score': 0},
        {'text': 'Cystic Fibrosis', 'score':1}
      ]
    }, {
      'questionText': 'Where in a cell is the genetic information stored?',
      'answers': [
        {'text': 'The nucleus', 'score': 1},
        {'text': 'The cell membrane', 'score': 0},
        {'text': 'The cytoplasm', 'score': 0},
        {'text': 'The vacuoles', 'score': 0}
      ]
    },{
      'questionText': 'Which one of the following is an acquired characteristic?',
      'answers': [
        {'text': 'Being a super taster', 'score': 0},
        {'text': 'Being good at football', 'score': 1},
        {'text': 'Hair colour', 'score': 0},
        {'text': 'Eye colour', 'score': 0}
      ]
    },{
      'questionText': 'Which one of the following statements is incorrect?',
      'answers': [
        {'text': 'The nucleus controls the cell', 'score': 0},
        {'text': 'Chromosomes and genes reside in the nucleus', 'score': 0},
        {'text': 'The colour of hair is determined by the genes of each parent', 'score': 0},
        {'text': 'All chromosomes are the same', 'score': 1}
      ]
    }, {
      'questionText': 'James Dewey Watson and Francis Crick discovered DNA in 1953.\nWhere would you not find DNA?',
      'answers': [
        {'text': 'The nucleus', 'score': 0},
        {'text': 'Chromosomes', 'score': 0},
        {'text': 'Genes', 'score': 0},
        {'text': 'Cytoplasm', 'score': 1}
      ]
    },
    {
      'questionText': 'An allele is ______',
      'answers': [
        {'text': 'another word for a gene', 'score': 0},
        {'text': 'a homozygous genotype', 'score': 0},
        {'text': 'one of several possible forms of a gene', 'score': 1},
        {'text': 'a heterozygous genotype', 'score': 0},
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
                    " Genetics",
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