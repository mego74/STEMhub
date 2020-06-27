import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/sciencequizes/quiz16/result16.dart';
import 'package:untitled7/sciencequizes/quiz16/quizzz16.dart';


void main() => runApp(Quiz16());

class Quiz16 extends StatelessWidget {
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

      'questionText': 'Study the food web shown.\nWhich one of the following is not a food chain?',
      'image':'assets/images/ecology11.png',
      'answers': [
        {'text': 'Plantain ➞ Mouse ➞ Buzzard', 'score': 0},
        {'text': 'Berries ➞ Ladybird ➞ Dragonfly', 'score': 1},
        {'text': 'Plantain ➞ Mouse ➞ Fox', 'score': 0},
        {'text': 'Berries ➞ Butterfly ➞ Frog', 'score': 0}
      ]
    }, {
      'questionText': 'Study the food web shown.\nWhich one of the following is a proper food chain?',
      'image':'assets/images/ecology22.png',
      'answers': [
        {'text': 'Fox ➞ Rabbit ➞ Green plants', 'score': 0},
        {'text': 'Green plants ➞ Mouse ➞ Frog', 'score': 0},
        {'text': 'Green plants ➞ Butterfly ➞ Owl', 'score': 0},
        {'text': 'Green plant ➞ Rabbit ➞ Owl', 'score':1}
      ]
    }, {
      'questionText': 'Habitats are affected by environmental factors.\nWhich one of the following factors is most unlikely to affect a habitat?',
      'image':'',
      'answers': [
        {'text': 'Competition between plants in the habitat.', 'score': 0},
        {'text': 'The soil type of the habitat.', 'score': 0},
        {'text': 'The weather most prevalent in the habitat.', 'score': 0},
        {'text': 'The number of times it is photographed.', 'score': 1}
      ]
    },{
      'questionText': 'Which one of the following is not a producer?',
      'image':'',
      'answers': [
        {'text': 'Tree', 'score': 0},
        {'text': 'Grass', 'score': 0},
        {'text': 'Deer', 'score': 1},
        {'text': 'Cabbage', 'score': 0}
      ]
    },{
      'questionText': 'Which one of the following is not a consumer?',
      'image':'',
      'answers': [
        {'text': 'Carnivore', 'score': 0},
        {'text': 'Decomposer', 'score': 1},
        {'text': 'Herbivore', 'score': 0},
        {'text': 'Omnivore', 'score': 0}
      ]
    }, {
      'questionText': 'Which one of the following food chains belongs to a woodland?',
      'image':'',
      'answers': [
        {'text': 'grass ➞ zebra ➞ lion', 'score': 0},
        {'text': 'water cress ➞ mayfly larva ➞ stickleback', 'score': 0},
        {'text': 'phytoplankton ➞ krill ➞ whale', 'score': 0},
        {'text': 'leaves ➞ caterpillar ➞ thrush', 'score': 1}
      ]
    },
    {
      'questionText': 'Which one of the following is an example of a decomposer?',
      'image':'',
      'answers': [
        {'text': 'Lobster', 'score': 0},
        {'text': 'Lizard', 'score': 0},
        {'text': 'Earthworm', 'score': 1},
        {'text': 'Spider', 'score': 0}
      ]
    },
    {
      'questionText': 'Which one of the following organisms is missing from the food chain?\nLeaves ➞ caterpillar ➞ X ➞ hawk',
      'image':'',
      'answers': [
        {'text': 'X = sparrow', 'score': 1},
        {'text': 'X = fox', 'score': 0},
        {'text': 'X = limpet', 'score': 0},
        {'text': 'X = seaweed', 'score': 0}
      ]
    },
    {
      'questionText': 'A consumer that eats plant material only is called a ______',
      'image':'',
      'answers': [
        {'text': 'herbivore', 'score': 1},
        {'text': 'decomposer', 'score': 0},
        {'text': 'omnivore', 'score': 0},
        {'text': 'carnivore', 'score': 0}
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
                    " Ecology",
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