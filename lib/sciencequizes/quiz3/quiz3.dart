import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz3/result3.dart';
import 'package:untitled7/sciencequizes/quiz3/quizzz3.dart';

void main() => runApp(Quiz3());

class Quiz3 extends StatelessWidget {
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
      'questionText': 'Oil, natural gas and coal are examples of',
      'answers': [
        {'text': 'Fossil fuels', 'score': 1},
        {'text': 'Biofuels', 'score': 0},
        {'text': 'Renewable resources', 'score': 0},
        {'text': 'Geothermal resources', 'score': 0}
      ]
    }, {
      'questionText': 'A blood test was conducted by Ahmed, it was found that there is a large number of white blood cells. What does this result show?',
      'answers': [
        {'text': 'Ahmed suffers from contamination caused by bacteria', 'score': 1},
        {'text': 'Ahmed suffers from lack of oxygen in the cells of his body', 'score': 0},
        {'text': 'Ahmed has to eat more fruits and vegetables', 'score': 0},
        {'text': 'Ahmed should do more physical activity', 'score':0}
      ]
    }, {
      'questionText': 'Many diseases have an incubation period. Which of the following best describes what an incubation period is?',
      'answers': [
        {'text': 'The period during which someone has an infection, but is not showing symptoms', 'score': 1},
        {'text': 'The recovery period after being sick', 'score': 0},
        {'text': 'The effect of a disease on babies', 'score': 0},
        {'text': 'The period during which someone builds up immunity to a disease', 'score': 0}
      ]
    },{
      'questionText': 'Proteins are made up of',
      'answers': [
        {'text': 'Sugars', 'score': 0},
        {'text': 'Amino acids', 'score': 1},
        {'text': 'Fatty acids', 'score': 0},
        {'text': 'Nucleic acids', 'score': 0}
      ]
    },{
      'questionText': 'Mention the source of Liver, milk, egg yolk, fish liver oil?',
      'answers': [
        {'text': 'Vitamin A', 'score': 0},
        {'text': 'Vitamin B', 'score': 0},
        {'text': 'Vitamin D', 'score': 1},
        {'text': 'Vitamin C', 'score': 0}
      ]
    }, {
      'questionText': 'Sometimes, early in the morning you see drops of dew on the surfaces of cars. From what and How do these droplets form?',
      'answers': [
        {'text': 'Water vapor in the air which has undergone condensation', 'score': 1},
        {'text': 'Water vapor in the air which has undergone evaporation', 'score': 0},
        {'text': 'Light rain falling in the cold morning hours', 'score': 0},
        {'text': 'Water vapor in the air that has undergone fusion', 'score': 0}
      ]
    },
    {
      'questionText': 'Washing soda is the common name for',
      'answers': [
        {'text': 'Sodium carbonate', 'score': 1},
        {'text': 'Calcium bicarbonate', 'score': 0},
        {'text': 'Sodium bicarbonate', 'score': 0},
        {'text': 'Calcium carbonate', 'score': 0}
      ]
    },
    {
      'questionText': 'Quartz crystals normally used in quartz clocks etc. is chemically',
      'answers': [
        {'text': 'Silicon dioxide', 'score': 1},
        {'text': 'Germanium oxide', 'score': 0},
        {'text': 'A mixture of germanium oxide and silicon dioxide', 'score': 0},
        {'text': 'Sodium silicate', 'score': 0}
      ]
    },
    {
      'questionText': '____ is the process by which energy travels from a warm substance to a colder substance',
      'answers': [
        {'text': 'Conduction', 'score': 1},
        {'text': 'Convection', 'score': 0},
        {'text': 'Radiation', 'score': 0},
        {'text': 'Absorption', 'score': 0}
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
                    " General Knowledge",
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