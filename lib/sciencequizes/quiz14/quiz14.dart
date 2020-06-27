import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz14/result14.dart';
import 'package:untitled7/sciencequizes/quiz14/quizzz14.dart';

void main() => runApp(Quiz14());

class Quiz14 extends StatelessWidget {
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
      'questionText': 'Which of these grouping of elements could have the characteristic of luster (shiny)?',
      'answers': [
        {'text': 'Metal', 'score': 0},
        {'text': 'Nonmetal', 'score': 0},
        {'text': 'Metalloids', 'score': 0},
        {'text': 'Both metals and metalloids', 'score': 1}
      ]
    }, {
      'questionText': 'Which of these is a property of metals?',
      'answers': [
        {'text': 'It can\'t conduct electricity', 'score': 0},
        {'text': 'They are used in food', 'score': 0},
        {'text': 'It\'s very brittle', 'score': 0},
        {'text': 'It\'s malleable', 'score':1}
      ]
    }, {
      'questionText': 'What are two properties that make a metal a GOOD choice to use as a wire in electronics?',
      'answers': [
        {'text': 'Ductility, Conductivity', 'score': 1},
        {'text': 'Conductivity, malleability', 'score': 0},
        {'text': 'Luster, malleability', 'score': 0},
        {'text': 'Malleability, high density', 'score': 0}
      ]
    },{
      'questionText': 'The bronze medals are made up of ______',
      'answers': [
        {'text': 'Cu and Zn', 'score': 0},
        {'text': 'Cu and Sn', 'score': 1},
        {'text': 'Zn and Ni', 'score': 0},
        {'text': 'Cu, Zn, Tn', 'score': 0}
      ]
    },{
      'questionText': 'In a laboratory , A rusted metallic box was examined. What is the rust?',
      'answers': [
        {'text': 'Dirts accumulating on the metal', 'score': 0},
        {'text': 'Iron hydroxide', 'score': 1},
        {'text': 'Iron oxide', 'score': 0},
        {'text': 'Mixture between iron and oxygen', 'score': 0}
      ]
    }, {
      'questionText': 'Which of the following processes cannot be used to slow down corrosion of an iron nail?\n(1) Wrapping a copper wire around the iron nail\n(2) Putting the nail in oil\n3) Attaching a piece of silver to the iron nail',
      'answers': [
        {'text': '(1) and (2) only', 'score': 0},
        {'text': '(1) and (3) only', 'score': 0},
        {'text': '(3) and (2) only', 'score': 1},
        {'text': '(1), (2) and (3)', 'score': 0}
      ]
    },
    {
      'questionText': 'Which group of elements are the most reactive metals?',
      'answers': [
        {'text': 'Alkali metals', 'score': 1},
        {'text': 'Alkaline earth metals', 'score': 0},
        {'text': 'Halogens ', 'score': 0},
        {'text': 'Noble gases', 'score': 0},
      ]
    },
    {
      'questionText': 'During the experiment with metal X in the middle of tube, a gas is liberated. The gas can burn at the end of the delivery tube. X is probably',
      'answers': [
        {'text': 'Zinc', 'score': 1},
        {'text': 'Silver', 'score': 0},
        {'text': 'Iron', 'score': 0},
        {'text': 'Lead', 'score': 0},
      ]
    },
    {
      'questionText': 'Which of the following shows the correct descending order of reactivity of metal?',
      'answers': [
        {'text': 'Fe, Zn, Ag, Cu', 'score': 0},
        {'text': 'K, Na, Al, Ca', 'score': 0},
        {'text': 'Al, Fe, Cu, Au', 'score': 1},
        {'text': 'Mg, Al, Pb, Zn', 'score': 0},
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
                    " Metals",
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