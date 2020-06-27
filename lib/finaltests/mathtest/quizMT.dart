import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/finaltests/mathtest/resultMT.dart';
import 'package:untitled7/finaltests/mathtest/quizzzMT.dart';



void main() => runApp(QuizMT());

class QuizMT extends StatelessWidget {
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

      'questionText': 'In the given diagram, ABCD is a square and semi-circular regions have been added to it by drawing two semi-circles with AB and CD as diameters. If the total area of the three regions is 350 sq.cm, then the length of the side of the square is equal to',
      'image':'assets/images/math1.png',
      'answers': [
        {'text': '57–√57', 'score': 0},
        {'text': '14 cm', 'score': 1},
        {'text': '13 cm', 'score': 0},
        {'text': '7 cm', 'score': 0}
      ]
    }, {
      'questionText': 'If G is the centroid of triangle ABC and BF= 10. Find the length of FA.',
      'image':'assets/images/math2.png',
      'answers': [
        {'text': '20', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '5', 'score': 0},
        {'text': 'Not Enough Informations', 'score':0}
      ]
    }, {
      'questionText': 'Given the right triangles shown at the right. ΔFGC is isosceles. Which of the following methods will prove ΔABC congruent to ΔDEF?',
      'image':'assets/images/math3.png',
      'answers': [
        {'text': 'SSS', 'score': 0},
        {'text': 'HL', 'score': 0},
        {'text': 'SAS', 'score': 0},
        {'text': 'AAS', 'score': 1}
      ]
    },{
      'questionText': 'Given altitudes AE and BD in ΔABC. What additional information is needed to prove Δ AFD congruent to Δ BFE?',
      'image':'assets/images/math4.png',
      'answers': [
        {'text': 'AC congruent BC', 'score': 0},
        {'text': 'AE congruent BD', 'score': 0},
        {'text': 'DF congruent EF', 'score': 1},
        {'text': 'AB congruent BC', 'score': 0}
      ]
    },{
      'questionText': 'Calculate the mean number of children per family for the sample from the following table.',
      'image':'assets/images/math5.png',
      'answers': [
        {'text': '1.91', 'score': 0},
        {'text': '2.19', 'score': 1},
        {'text': '2.47', 'score': 0},
        {'text': '3.14', 'score': 0}
      ]
    }, {
      'questionText': 'If the length and breadth of a rectangular field are increased, the area increases by 50%. If the increase in length was 20 %, by what percentage was the breadth increased ?',
      'image':'',
      'answers': [
        {'text': '20%', 'score': 0},
        {'text': '25%', 'score': 1},
        {'text': '30%', 'score': 0},
        {'text': 'Data inadequate', 'score': 0}
      ]
    },
    {
      'questionText': 'Two equal circle are drawn in square in such a way that a side of the square forms diameter of each circle. If the remaining area of the square is 42 cm2, how much will the diameter of the circle measure ?',
      'image':'',
      'answers': [
        {'text': '3.5 cm', 'score': 0},
        {'text': '4 cm', 'score': 0},
        {'text': '14 cm', 'score': 1},
        {'text': '7.5 cm', 'score': 0}
      ]
    },
    {
      'questionText': 'A circular road runs around a circular garden. If the difference between the circumference of the outer circle and the inner circle is 44 m, the width of the road is :',
      'image':'',
      'answers': [
        {'text': '7 m', 'score': 1},
        {'text': '7.5 m', 'score': 0},
        {'text': '3.5 m', 'score': 0},
        {'text': '4 m', 'score': 0}
      ]
    },
    {
      'questionText': 'The dimensions of a room are 12.5 metres by 9 metres by 7 metres. There are 2 doors and 4 windows in the room; each door measures 2.5 metres by 1.2 metres and each window 1.5 metres by 1 metre. Find the cost of painting the walls at 3.50EGP per square metre.',
      'image':'',
      'answers': [
        {'text': '1011.5 EGP', 'score': 1},
        {'text': '150.5 EGP', 'score': 0},
        {'text': '1101.5 EGP', 'score': 0},
        {'text': 'Cannot be determined', 'score': 0}
      ]
    },
    {
      'questionText': 'The area of a square is twice that of a rectangle. The perimeter of the rectangle is 10 cm. If its length and breadth each is increased by 1 cm, the area of the rectangle become equal to the area of the square. The length of side of the square is ',
      'image':'',
      'answers': [
        {'text': '4√3 cm', 'score': 0},
        {'text': '3√2 cm', 'score': 0},
        {'text': '2√3cm', 'score': 1},
        {'text': '12 cm', 'score': 0}
      ]
    },
    {
      'questionText': 'ABCD is a square. E is the mid-point of BC and F is the mid-point of CD. The ratio of the area of triangle AEF to the area of the square ABCD is ',
      'image':'',
      'answers': [
        {'text': '1 : 2', 'score': 0},
        {'text': '1 : 3', 'score': 0},
        {'text': '3 : 8', 'score': 1},
        {'text': '1 : 4', 'score': 0}
      ]
    },
    {
      'questionText': 'In a right angled ΔABC, ∠ABC = 90°, AB = 3, BC = 4, CA = 5; BN is perpendicular to AC, AN : NC is',
      'image':'',
      'answers': [
        {'text': '3 : 4', 'score': 0},
        {'text': '3 : 16', 'score': 0},
        {'text': '9 : 16', 'score': 1},
        {'text': '1 : 4', 'score': 0}
      ]
    },
    {
      'questionText': 'ABC is an isosceles triangle where AB = AC which is circumscribed about a circle. If P is the point where the circle touches the side BC, then which of the following is true?',
      'image':'',
      'answers': [
        {'text': 'PB = PC', 'score': 1},
        {'text': 'PB > PC', 'score': 0},
        {'text': 'PB < PC', 'score': 0},
        {'text': 'PB = 0.5', 'score': 0}
      ]
    },
    {
      'questionText': 'ABC is a right-angled triangle with AB = 6 cm and BC = 8 cm. A circle with center O has been inscribed inside ΔABC. The radius of the circle is',
      'image':'',
      'answers': [
        {'text': '4 cm', 'score': 0},
        {'text': '3 cm', 'score': 0},
        {'text': '1 cm', 'score': 0},
        {'text': '2 cm', 'score': 1}
      ]
    },
    {
      'questionText': 'The area of a triangle is equal to the area of a square whose each side is 60 metres. The height of the triangle is 90 metres. The base of the triangle will be ',
      'image':'',
      'answers': [
        {'text': '65 m', 'score': 0},
        {'text': '80 m', 'score': 1},
        {'text': '75 m', 'score': 0},
        {'text': '85 m', 'score': 0}
      ]
    },
    {
      'questionText': 'What is the The value of\n(1 + 1/x)(1 + 1/x+1)(1 + 1/x+2)(1 + 1/x+3)',
      'image':'',
      'answers': [
        {'text': '1 + (1 / (x + 4))', 'score': 0},
        {'text': 'x + 4', 'score': 0},
        {'text': '1/x', 'score': 0},
        {'text': '(x + 4) / x', 'score': 1}
      ]
    },
    {
      'questionText': 'If (2a+b)/(a+4b)=3\nthen find the value of\n(a+b)/(a+2b)',
      'image':'',
      'answers': [
        {'text': '5/9', 'score': 0},
        {'text': '2/7', 'score': 0},
        {'text': '10/9', 'score': 1},
        {'text': '10/7', 'score': 0}
      ]
    },
    {
      'questionText': 'If (a/b) = (c/d) = (e/f) = 3\nthen\n((2a^2) + (3c^2) + (4e^2)) / (2b^2) + (3d^2) + (4f^2)',
      'image':'',
      'answers': [
        {'text': '9', 'score': 1},
        {'text': '4', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '2', 'score': 0}
      ]
    },
    {
      'questionText': 'If (x+1) / (4x) = 32\nFind the value of\n (8x^3) + (1 / (8x^3))',
      'image':'',
      'answers': [
        {'text': '18', 'score': 1},
        {'text': '24', 'score': 0},
        {'text': '36', 'score': 0},
        {'text': '16', 'score': 0}
      ]
    },
    {
      'questionText': 'If ((x+1)/x)^2 = 3\nthen the value of\n(x^72 + x^66 + x^54 + x^24 + x^6 + 1)',
      'image':'',
      'answers': [
        {'text': '206', 'score': 0},
        {'text': '84', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': '0', 'score': 1}
      ]
    },
    {
      'questionText': 'Two friends A and B apply for a job in the same company. The chances of A getting selected is 2/5 and that of B is  4/7 . What is the probability that both of them get selected?',
      'image':'',
      'answers': [
        {'text': '8/35', 'score': 1},
        {'text': '34/35', 'score': 0},
        {'text': '27/35', 'score': 0},
        {'text': 'None of these', 'score': 0}
      ]
    },
    {
      'questionText': 'Two dice are thrown simultaneously. What is the probability of getting the sum of the face number is odd?',
      'image':'',
      'answers': [
        {'text': '1/2', 'score': 1},
        {'text': '2/3', 'score': 0},
        {'text': '3/4', 'score': 0},
        {'text': '1/3', 'score': 0}
      ]
    },
    {
      'questionText': 'A national random sample of 20 ACT scores from 2010 is listed below. Calculate the sample mean and standard deviation. 29, 26, 13, 23, 23, 25, 17, 22, 17, 19, 12, 26, 30, 30, 18, 14, 12, 26, 17, 18',
      'image':'',
      'answers': [
        {'text': '20.50, 5.79', 'score': 0},
        {'text': '20.50, 5.94', 'score': 0},
        {'text': '20.85, 5.94', 'score': 1},
        {'text': '20.85, 5.79', 'score': 0}
      ]
    },
    {
      'questionText': 'sin 2B = 2 sin B is true when B is equal to',
      'image':'',
      'answers': [
        {'text': '90°', 'score': 0},
        {'text': '60°', 'score': 0},
        {'text': '30°', 'score': 0},
        {'text': '0°', 'score': 1}
      ]
    },
    {
      'questionText': 'If A and (2A – 45°) are acute angles such that sin A = cos (2A – 45°), then tan A is equal to',
      'image':'',
      'answers': [
        {'text': '1', 'score': 1},
        {'text': '1 / √3', 'score': 0},
        {'text': '√3', 'score': 0},
        {'text': '0', 'score': 0}
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