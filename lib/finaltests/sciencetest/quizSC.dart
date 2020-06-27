import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/finaltests/sciencetest/resultSC.dart';
import 'package:untitled7/finaltests/sciencetest/quizzzSC.dart';



void main() => runApp(QuizSC());

class QuizSC extends StatelessWidget {
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

      'questionText': 'Ramon sat two glasses of water outside next to each other for 15 minutes. Each glass had the same amount of water. One glass was covered with black paper and one was covered with white paper. He took the following temperatures.\nWhat is the variable being tested in this experiment?',
      'image':'assets/images/science1.png',
      'answers': [
        {'text': 'The location of the glass', 'score': 0},
        {'text': 'The color of paper', 'score': 1},
        {'text': 'The size of glass', 'score': 0},
        {'text': 'The amount of water', 'score': 0}
      ]
    }, {
      'questionText': 'At which position in Earth’s orbit are daytime and nighttime equal?',
      'image':'assets/images/science3.png',
      'answers': [
        {'text': '4', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '2', 'score':1}
      ]
    }, {
      'questionText': 'If foxes and hawks are removed from this food web, one result will be',
      'image':'assets/images/science2.png',
      'answers': [
        {'text': 'a decrease in moles', 'score': 0},
        {'text': 'an increase in insects', 'score': 0},
        {'text': 'a decrease in snakes', 'score': 0},
        {'text': 'an increase in rabbits', 'score': 1}
      ]
    },{
      'questionText': 'At which location does the diver have the most kinetic energy?',
      'image':'assets/images/science4.png',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '3', 'score': 0}
      ]
    },{
      'questionText': 'As seen from Earth, at which position would the moon appear to be full?',
      'image':'assets/images/science5.png',
      'answers': [
        {'text': 'Position D', 'score': 0},
        {'text': 'Position A', 'score': 1},
        {'text': 'Position B', 'score': 0},
        {'text': 'Position C', 'score': 0}
      ]
    }, {
      'questionText': 'What will happen when these magnets are brought close together?',
      'image':'assets/images/science6.png',
      'answers': [
        {'text': 'Both magnets will turn to the right', 'score': 0},
        {'text': 'Both magnets will turn to the left', 'score': 0},
        {'text': 'They will attract each other', 'score': 0},
        {'text': 'They will repel each other', 'score': 1}
      ]
    },
    {
      'questionText': 'This substance is',
      'image':'assets/images/science7.png',
      'answers': [
        {'text': 'negatively charged', 'score': 0},
        {'text': 'magnetized', 'score': 0},
        {'text': 'unmagnetized', 'score': 1},
        {'text': 'positively charged', 'score': 0}
      ]
    },
    {
      'questionText': 'A ringing bell makes noise inside a glass jar. Then the air is removed from the glass jar using a vacuum pump. When all of the air leaves the jar, the sound of the ringing bell can no longer be heard.Which of the following best explains why the students can no longer hear the bell?',
      'image':'assets/images/science8.png',
      'answers': [
        {'text': 'The air in the jar provides a medium for the sound to travel through.', 'score': 1},
        {'text': 'Removing the air from the jar allows the bell to ring only very softly.', 'score': 0},
        {'text': 'The sound in the empty jar is reflected off the inside of the glass sides.', 'score': 0},
        {'text': 'The difference in pressure inside and outside the glass jar is too great.', 'score': 0}
      ]
    },
    {
      'questionText': 'The illustration shows the path of light leaving a laser pointer.\nAt what point is the light from the laser being absorbed?',
      'image':'assets/images/science9.png',
      'answers': [
        {'text': 'D', 'score': 1},
        {'text': 'C', 'score': 0},
        {'text': 'B', 'score': 0},
        {'text': 'A', 'score': 0}
      ]
    },
    {
      'questionText': 'If lamp 1 is unscrewed from its holder, what will happen to lamp 2?',
      'image':'assets/images/science10.png',
      'answers': [
        {'text': 'It will get brighter', 'score': 0},
        {'text': 'It will stay the same brightness', 'score': 0},
        {'text': 'It will go out', 'score': 1},
        {'text': 'Nothing will happen', 'score': 0}
      ]
    },
    {
      'questionText': 'Why does a gamete produced during meiosis have half as many chromosomes as a daughter cell produced during mitosis?',
      'image':'',
      'answers': [
        {'text': 'Mitosis does not involve a step in which the original cell makes a copy of its chromosomes.', 'score': 0},
        {'text': 'Meiosis does not involve a step in which the original cell makes a copy of its chromosomes. ', 'score': 0},
        {'text': 'Meiosis involves a second cell division that separates identical chromosomes. ', 'score': 1},
        {'text': 'Mitosis involves a second cell division that separates identical chromosomes.', 'score': 0}
      ]
    },
    {
      'questionText': 'An element X on exposure to moist air turns reddish-brown and a new compound Y is formed. The substance X and Y are',
      'image':'',
      'answers': [
        {'text': 'X = Al, Y = Al2O3', 'score': 0},
        {'text': 'X = Cu, Y = CuO', 'score': 0},
        {'text': 'X = Fe, Y = Fe2O3', 'score': 1},
        {'text': 'X = Ag, Y = Ag2S', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following statements about the given reaction are correct?\n3Fe (s) + 4H2O (g) → Fe3O4 (s) + 4 H2 (g)\n(i) Iron metal is getting oxidised\n(ii) Water is getting reduced\n(iii) Water is acting as reducing agent\n(iv) Water is acting as oxidising agent',
      'image':'',
      'answers': [
        {'text': '(i), (ii) and (iv)', 'score': 1},
        {'text': '(i) and (iv)', 'score': 0},
        {'text': '(ii) and (iv)', 'score': 0},
        {'text': '(i), (zi) and (iii)', 'score': 0}
      ]
    },
    {
      'questionText': 'A bicyclist was traveling at a uniform speed of 5 m/sec. When she started to go down a hill, the bicyclist\'s speed increased to 8 m/sec over a period of 3 seconds. What was the bicyclist\'s rate of acceleration going down the hill?',
      'image':'',
      'answers': [
        {'text': '40 m/sec^2', 'score': 0},
        {'text': '9 m/sec^2', 'score': 0},
        {'text': '3 m/sec^2', 'score': 0},
        {'text': '1 m/sec^2', 'score': 1}
      ]
    },
    {
      'questionText': 'What is the magnitude of acceleration of the tennis ball thrown vertically up in the air at its highest position?',
      'image':'',
      'answers': [
        {'text': 'zero', 'score': 0},
        {'text': '9.8 m/s^2', 'score': 1},
        {'text': '19.6 m/s^2', 'score': 0},
        {'text': 'depends on the height', 'score': 0}
      ]
    },
    {
      'questionText': 'An object is dropped from rest and falls freely 20 m to Earth. Which of the following statements is TRUE?',
      'image':'',
      'answers': [
        {'text': 'The speed of the object is 9.8 m/s at the end of its 1st second of falling.', 'score': 0},
        {'text': 'The speed of the object is 9.8 m/s during the entire 1st second of its fall.', 'score': 1},
        {'text': 'The speed of the object is 9.8 m/s during its entire time of its fall.', 'score': 0},
        {'text': 'The speed of the object is 9.8 m/s after it has fallen 9.8 meters.', 'score': 0}
      ]
    },
    {
      'questionText': 'A plant cell wall is mainly composed of',
      'image':'',
      'answers': [
        {'text': 'Starch', 'score': 0},
        {'text': 'Protein', 'score': 0},
        {'text': 'Cellulose', 'score': 1},
        {'text': 'Lipid', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following structure is where cellular respiration occurs in the cell?',
      'image':'',
      'answers': [
        {'text': 'mitochondria', 'score': 1},
        {'text': 'nucleus', 'score': 0},
        {'text': 'vacuoles', 'score': 0},
        {'text': 'cytoplasm', 'score': 0}
      ]
    },
    {
      'questionText': 'Why does a compass always point north?',
      'image':'',
      'answers': [
        {'text': 'The needle is a magnet and it aligns itself with the Earth\'s magnetic fields', 'score': 1},
        {'text': 'Earth is a magnet and it attracts all metal objects towards the north', 'score': 0},
        {'text': 'Earth\'s south pole does not have a magnetic pull', 'score': 0},
        {'text': 'All magnets have a north and south pole', 'score': 0}
      ]
    },
    {
      'questionText': 'Which part of the carbon cycle occurs when plants, trees, or fossil fuels are burned?',
      'image':'',
      'answers': [
        {'text': 'Photosynthesis', 'score': 0},
        {'text': 'Respiration', 'score': 0},
        {'text': 'Combustion', 'score': 1},
        {'text': 'Decay', 'score': 0}
      ]
    },
    {
      'questionText': 'Electromagnetic energy travels in waves. When we describe electromagnetic waves, we often talk about the wave’s length and frequency. Which of these statements accurately describes the relationship between the wavelength and frequency of an electromagnetic wave?',
      'image':'',
      'answers': [
        {'text': 'If wavelength increases, frequency increases.', 'score': 0},
        {'text': 'If wavelength remains constant, frequency increases.', 'score': 0},
        {'text': 'If frequency remains constant, wavelength increases.', 'score': 0},
        {'text': 'If frequency decreases, wavelength increases.', 'score': 1}
      ]
    },
    {
      'questionText': 'Which of the following is the correct order in which light travels through the eye?',
      'image':'',
      'answers': [
        {'text': 'Cornea, Lens, Retina, Pupil, Optic Nerve', 'score': 0},
        {'text': 'Pupil, Cornea, Lens, Retina, Optic Nerve', 'score': 0},
        {'text': 'Cornea, Pupil, Lens, Retina, Optic Nerve', 'score': 1},
        {'text': 'Cornea, Retina, Lens, Pupil, Optic Nerve', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following are physical changes?\n(i) Melting of iron metal\n(ii) Rusting of iron\n(iii) Bending of an iron rod\n(iv) Drawing a wire of iron metal',
      'image':'',
      'answers': [
        {'text': '(i), (ii) and (iii)', 'score': 0},
        {'text': '(i), (ii) and (iv)', 'score': 0},
        {'text': '(i), (iii) and (iv)', 'score': 1},
        {'text': '(ii), (iii) and (iv)', 'score': 0}
      ]
    },
    {
      'questionText': 'An acidic oxide usually reacts with water to form an acid.\nWhich one of the following oxides is not an acidic oxide?',
      'image':'',
      'answers': [
        {'text': 'Nitrogen dioxode (NO2)', 'score': 0},
        {'text': 'Copper dioxide (CuO2)', 'score': 1},
        {'text': 'Carbon dioxide (CO2)', 'score': 0},
        {'text': 'Sulfur dioxide (SO2)', 'score': 0}
      ]
    },
    {
      'questionText': 'Genetic traits of seeds are noted as follows: L = long, l = short W = wrinkled, w = smooth Y = yellow, y = white R = ribbed, r = grooved \nWhich of the following is the genotype for a short, wrinkled, yellow, grooved seed?',
      'image':'',
      'answers': [
        {'text': 'llWwYYrr', 'score': 1},
        {'text': 'LlWwYYRr', 'score': 0},
        {'text': 'LLWWyYRr', 'score': 0},
        {'text': 'llWwyyrr', 'score': 0}
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
                    " STEMhub",
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