import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/englishquizes/quiz9/result9.dart';
import 'package:untitled7/englishquizes/quiz9/quizzz9.dart';



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

      'questionText': 'According to the text, why does Jacob stop playing the guitar?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'It hurt his fingers.', 'score': 1},
        {'text': 'He’d rather play drums.', 'score': 0},
        {'text': 'It was too easy.', 'score': 0},
        {'text': 'He failed math.', 'score': 0}
      ]
    }, {
      'questionText': 'To whom did Jacob want to play Black Eyed Peas songs?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'Alex', 'score': 0},
        {'text': 'Mom', 'score': 0},
        {'text': 'Dad', 'score': 0},
        {'text': 'Angie', 'score':1}
      ]
    }, {
      'questionText': 'Why does Jacob decide that he wants a metal detector?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'He sees a man at the park with one.', 'score': 0},
        {'text': 'His father had one as a child.', 'score': 0},
        {'text': 'He saw a TV commercial for one.', 'score': 0},
        {'text': 'He read an ad for one in a comic book.', 'score': 1}
      ]
    },{
      'questionText': 'How does Jacob get the items that he wants in the story?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'He asks his mom.', 'score': 0},
        {'text': 'He asks his dad.', 'score': 0},
        {'text': 'He shovels driveways and mows lawns.', 'score': 1},
        {'text': 'He does all of these things to get what he wants.', 'score': 0}
      ]
    },{
      'questionText': 'When did Jacob buy the metal detector?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'In the fall', 'score': 0},
        {'text': 'In the summer', 'score': 1},
        {'text': 'In the spring', 'score': 0},
        {'text': 'In the winter', 'score': 0}
      ]
    }, {
      'questionText': 'Why doesn’t Jacob’s father want to get him the magician’s kit?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'Jacob failed math class.', 'score': 0},
        {'text': 'Jacob went to the park without permission.', 'score': 0},
        {'text': 'Jacob has been mean to his younger brother.', 'score': 0},
        {'text': 'Jacob quits too many expensive activities.', 'score': 1}
      ]
    },
    {
      'questionText': 'Why does Jacob’s father buy Jacob the magician’s kit?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'Jacob mowed the lawn.', 'score': 0},
        {'text': 'Jacob bought ice cream for his brother. ', 'score': 0},
        {'text': 'Jacob reminded his father of himself.', 'score': 1},
        {'text': 'Jacob found his father’s key ring.', 'score': 0}
      ]
    },
    {
      'questionText': 'Based on the end of the story, What\'s Jacob most likely to go on and do?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'Raise money to go to space camp', 'score': 1},
        {'text': 'Become a great magician', 'score': 0},
        {'text': 'Learn to play guitar well', 'score': 0},
        {'text': 'Detect an incredible hidden treasure', 'score': 0}
      ]
    },
    {
      'questionText': 'Which character trait best describes Jacob in regards to his hobbies?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'Impulsive', 'score': 1},
        {'text': 'Dedicated', 'score': 0},
        {'text': 'Committed', 'score': 0},
        {'text': 'Devoted', 'score': 0}
      ]
    },
    {
      'questionText': 'In what genre is this story?',
      'image':'assets/images/reading1.png',
      'answers': [
        {'text': 'Folklore', 'score': 0},
        {'text': 'Nonfiction', 'score': 0},
        {'text': 'Fiction', 'score': 1},
        {'text': 'Poetry', 'score': 0}
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
                    " Reading Comprehension I",
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