import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz9/result9.dart';
import 'package:untitled7/sciencequizes/quiz9/quizzz9.dart';



void main() => runApp(Quiz9());

class Quiz9 extends StatelessWidget {
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

      'questionText': 'What structure is bright blue and located at bottom of the brain and controls the information sent between brain and rest of the body?',
      'image':'assets/images/brain1.png',
      'answers': [
        {'text': 'Cerebrum', 'score': 0},
        {'text': 'Brain Stem', 'score': 1},
        {'text': 'Cerebellum', 'score': 0},
        {'text': 'Hippocampus', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s E?',
      'image':'assets/images/brain2.png',
      'answers': [
        {'text': 'Synapse', 'score': 0},
        {'text': 'Axon', 'score': 0},
        {'text': 'Cell Body', 'score': 1},
        {'text': 'Dendrite', 'score': 0}
      ]
    },{
      'questionText': 'This part of the neuron receives chemical messages from the neurotransmitters of other neurons. It is labeled A in the diagram',
      'image':'assets/images/brain2.png',
      'answers': [
        {'text': 'Dendrite', 'score': 1},
        {'text': 'Axon', 'score': 0},
        {'text': 'Axon Terminal', 'score': 0},
        {'text': 'Cell Body', 'score': 0}
      ]
    }, {
      'questionText': 'What is the part highlighted in red?',
      'image':'assets/images/brain3.png',
      'answers': [
        {'text': 'Cerebrum', 'score': 0},
        {'text': 'Brain Stem', 'score': 0},
        {'text': 'Cerebellum', 'score': 1},
        {'text': 'Diencephalon', 'score': 0}
      ]
    }, {
      'questionText': 'The synapse is specifically responsible for communication between:',
      'image':'',
      'answers': [
        {'text': 'Individual neurons', 'score': 1},
        {'text': 'The central nervous system and the peripheral nervous system', 'score': 0},
        {'text': 'Individual nerve fibers', 'score': 0},
        {'text': 'The brain and the spinal chord', 'score': 0}
      ]
    },
    {
      'questionText': 'The nervous system is composed of the ___, ___, and ___.',
      'image':'',
      'answers': [
        {'text': 'heart, brain, kidneys', 'score': 0},
        {'text': 'lungs, liver, stomach', 'score': 0},
        {'text': 'eyes, pancreas, veins', 'score': 0},
        {'text': 'brain, spinal cord, nerves', 'score': 1}
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
      'questionText': 'A microscopic gap between a pair of adjacent neurons over which nerve impulses pass when going from one neuron to the next is called:',
      'image':'',
      'answers': [
        {'text': 'Neurotransmitter', 'score': 0},
        {'text': 'Synapse', 'score': 1},
        {'text': 'Axon', 'score': 0},
        {'text': 'None of the above', 'score': 0}
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
                    " Brain Nervous System",
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