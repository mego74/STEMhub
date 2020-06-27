import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz18/result18.dart';
import 'package:untitled7/sciencequizes/quiz18/quizzz18.dart';

void main() => runApp(Quiz18());

class Quiz18 extends StatelessWidget {
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
      'questionText': '______ only occur(s) in the gonads to produce gametes.',
      'answers': [
        {'text': 'Sporogony', 'score': 0},
        {'text': 'Mitosis', 'score': 0},
        {'text': 'Mitosis and meiosis', 'score': 0},
        {'text': 'Meiosis', 'score': 1}
      ]
    }, {
      'questionText': 'Which of the following is mitosis not used for?',
      'answers': [
        {'text': 'Repair (of a wound) in multicellular organisms', 'score': 0},
        {'text': 'Development (e.g., baby in mother\'s womb)', 'score': 0},
        {'text': 'Production of gametes', 'score': 1},
        {'text': 'All of the above use mitosis', 'score':0}
      ]
    }, {
      'questionText': 'During which stage of mitosis do the centromeres split?',
      'answers': [
        {'text': 'Anaphase', 'score': 1},
        {'text': 'Prophase', 'score': 0},
        {'text': 'Interphase', 'score': 0},
        {'text': 'Telophase', 'score': 0}
      ]
    },{
      'questionText': 'During which stage of mitosis does cytokinesis usually occur in animals?',
      'answers': [
        {'text': 'Prophase', 'score': 0},
        {'text': 'Telophase', 'score': 1},
        {'text': 'Anaphase', 'score': 0},
        {'text': 'Interphase', 'score': 0}
      ]
    },{
      'questionText': 'What is the correct order of the stages of mitosis?\n1-Metaphase 2-Telophase 3-Anaphase 4-Prophase',
      'answers': [
        {'text': '4,1,2,3', 'score': 0},
        {'text': '4,1,3,2', 'score': 1},
        {'text': '1,2,3,4', 'score': 0},
        {'text': '1,3,2,4', 'score': 0}
      ]
    }, {
      'questionText': 'During which stage of meiosis do the sister chromatids begin to move toward the poles?',
      'answers': [
        {'text': 'Prophase I', 'score': 0},
        {'text': 'Telophase I', 'score': 0},
        {'text': 'Anaphase I', 'score': 0},
        {'text': 'Anaphase II', 'score': 1}
      ]
    },
    {
      'questionText': 'During which stage of meiosis do tetrads line up at the equator?',
      'answers': [
        {'text': 'Metaphase I', 'score': 1},
        {'text': 'Telophase I', 'score': 0},
        {'text': 'Metaphase II', 'score': 0},
        {'text': 'Anaphase II', 'score': 0},
      ]
    },
    {
      'questionText': 'In both mitosis and meiosis, sister chromatids separate during anaphase, but there are _____ haploid daughter nuclei produced by meiosis compared to ______ diploid nuclei by mitosis.',
      'answers': [
        {'text': '6,3', 'score': 0},
        {'text': '2,4', 'score': 0},
        {'text': '4,2', 'score': 1},
        {'text': '3,6', 'score': 0},
      ]
    },
    {
      'questionText': 'During which stage of mitosis does the nuclear envelope begin to disappear?',
      'answers': [
        {'text': 'Metaphase I', 'score': 0},
        {'text': 'Telophase I', 'score': 0},
        {'text': 'Anaphase II', 'score': 0},
        {'text': 'Prophase I', 'score': 1},
      ]
    },
    {
      'questionText': 'When ____ occurs between non-sister chromatids genetic exchange between chromosomes provides new combination of genes that are different from either parent.',
      'answers': [
        {'text': 'cytokinesis', 'score': 0},
        {'text': 'crossing-over', 'score': 1},
        {'text': 'mitosis', 'score': 0},
        {'text': 'centromeres splitting', 'score': 0},
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
                    " Cell Division",
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