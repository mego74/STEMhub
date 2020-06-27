import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/finaltests/iqtest/resultIQ.dart';
import 'package:untitled7/finaltests/iqtest/quizzzIQ.dart';



void main() => runApp(QuizIQ());

class QuizIQ extends StatelessWidget {
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

      'questionText': 'حتى اكثر الورود ____ لديها اشواك',
      'image':'',
      'answers': [
        {'text': ' تفتحاً', 'score': 0},
        {'text': 'جاذبيةً', 'score': 1},
        {'text': 'انتشاراً', 'score': 0},
        {'text': 'بشاعةً', 'score': 0}
      ]
    }, {
      'questionText': 'بتغيير اماكن الاحرف في هذه الكلمة ( بطاسلر ), يمكنك الحصول على اسم اي شيء من هذه',
      'image':'',
      'answers': [
        {'text': 'دولة', 'score': 0},
        {'text': 'مدينة', 'score': 1},
        {'text': 'نبات', 'score': 0},
        {'text': 'حيوان', 'score':0}
      ]
    }, {
      'questionText': 'كلمة ( طعام ) بالنسبة لكلمة ( فم ) هي مثل كلمة ( صوت ) بالنسبة لكلمة ____ ',
      'image':'',
      'answers': [
        {'text': 'موسيقى', 'score': 0},
        {'text': 'حنجرة', 'score': 0},
        {'text': 'بيانو', 'score': 0},
        {'text': 'اذن', 'score': 1}
      ]
    },{
      'questionText': 'سمير اطول من حسان , و رامي اقصر من سمير . فأي من هذه المقولات تصح اكثر',
      'image':'',
      'answers': [
        {'text': 'رامي اطول من حسان', 'score': 0},
        {'text': 'حسان اطول من رامي', 'score': 0},
        {'text': 'رامي و حسان بطول واحد', 'score': 0},
        {'text': 'لا يمكن معرفة من منهما أطول', 'score': 1}
      ]
    },{
      'questionText': 'لا تدع الأمس يستهلك يومك ____',
      'image':'',
      'answers': [
        {'text': 'المستقبلى', 'score': 0},
        {'text': 'الحاضر', 'score': 1},
        {'text': 'الماضى', 'score': 0},
        {'text': 'الزمني', 'score': 0}
      ]
    }, {
      'questionText': ' الوقت كالسيف إن لم تقطعه ____',
      'image':'',
      'answers': [
        {'text': 'نالك', 'score': 0},
        {'text': 'قطعك', 'score': 1},
        {'text': 'رأسك', 'score': 0},
        {'text': 'قتلك', 'score': 0}
      ]
    },
    {
      'questionText': 'الاصبع بالنسبة لليد مثل الورقه لل',
      'image':'',
      'answers': [
        {'text': 'زهره', 'score': 0},
        {'text': 'شجره', 'score': 0},
        {'text': 'غصن', 'score': 1},
        {'text': 'لحاء', 'score': 0}
      ]
    },
    {
      'questionText': 'المهم ليس إنفاق الوقت، ولكن في ____',
      'image':'',
      'answers': [
        {'text': 'استثماره', 'score': 1},
        {'text': 'توظيفه', 'score': 0},
        {'text': 'استيراده', 'score': 0},
        {'text': 'اخراجه', 'score': 0}
      ]
    },
    {
      'questionText': 'Enter the missing number: 4, 8, 14, 22, ?',
      'image':'',
      'answers': [
        {'text': '32', 'score': 1},
        {'text': '26', 'score': 0},
        {'text': '28', 'score': 0},
        {'text': '36', 'score': 0}
      ]
    },
    {
      'questionText': 'What is the number that is one half of one quarter of one tenth of 480?',
      'image':'',
      'answers': [
        {'text': '6', 'score': 1},
        {'text': '12', 'score': 0},
        {'text': '16', 'score': 0},
        {'text': '24', 'score': 0}
      ]
    },
    {
      'questionText': 'One word in this list doesn\'t belong to the same group: Receiver, Reviver, Racecar, Radar.',
      'image':'',
      'answers': [
        {'text': 'Racecar', 'score': 0},
        {'text': 'Reviver', 'score': 0},
        {'text': 'Receiver', 'score': 1},
        {'text': 'Radar', 'score': 0}
      ]
    },
    {
      'questionText': 'What is the right writing of this word in a mirror STEM School ) ? ',
      'image':'',
      'answers': [
        {'text': 'ƧTƎM Ƨɔʜool', 'score': 0},
        {'text': 'Ƨɔʜool ƧTƎM', 'score': 0},
        {'text': 'looʜɔƧ MƎTƧ', 'score': 1},
        {'text': 'ᴤ⊥Eʍ ᴤⅽµooꞁ', 'score': 0}
      ]
    },
    {
      'questionText': 'Enter the missing number: 4, 5, 8, 17, 44, ?',
      'image':'',
      'answers': [
        {'text': '125', 'score': 1},
        {'text': '34', 'score': 0},
        {'text': '88', 'score': 0},
        {'text': '32', 'score': 0}
      ]
    },
    {
      'questionText': 'I\'m a male. If Amr\'s son is my son\'s father, what is the relationship between Amr and me?',
      'image':'',
      'answers': [
        {'text': 'he is my brother', 'score': 0},
        {'text': 'he is my uncle', 'score': 0},
        {'text': 'he is my father', 'score': 1},
        {'text': 'he is not related to me', 'score': 0}
      ]
    },
    {
      'questionText': 'A UFO was detected on the Radar flying 7400 miles in 3 min, what is the estimated speed per hour?',
      'image':'',
      'answers': [
        {'text': '7400 miles/h.', 'score': 0},
        {'text': '148000 miles/h.', 'score': 1},
        {'text': '14080 miles/h.', 'score': 0},
        {'text': '1480 miles/h.', 'score': 0}
      ]
    },
    {
      'questionText': 'One word in this list doesn\'t belong to the same group: Yen, Pound, Franc, Penny.',
      'image':'',
      'answers': [
        {'text': 'Yen', 'score': 0},
        {'text': 'Pound', 'score': 0},
        {'text': 'Franc', 'score': 0},
        {'text': 'Penny', 'score': 1}
      ]
    },
    {
      'questionText': 'There are 12 pens on the table, you took 3, how many do you have?',
      'image':'',
      'answers': [
        {'text': '6', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '0', 'score': 0}
      ]
    },
    {
      'questionText': 'A spy is trying to send a secret message, we\'re trying to decode his message, we need your help!\nIf (shnoppy droppy groppy) means (mission dangerously executed)\nAnd (swappy trappy droppy) means (abort mission immediately)\nAnd (drippy groppy wippy) means (plan executed successfully)\nThen what does "shnoppy" mean?',
      'image':'',
      'answers': [
        {'text': 'dangerously', 'score': 1},
        {'text': 'mission', 'score': 0},
        {'text': 'executed', 'score': 0},
        {'text': 'abort', 'score': 0}
      ]
    },
    {
      'questionText': 'Find the figure continuing the series',
      'image':'assets/images/iq1.png',
      'answers': [
        {'text': 'd', 'score': 1},
        {'text': 'c', 'score': 0},
        {'text': 'b', 'score': 0},
        {'text': 'a', 'score': 0}
      ]
    },
    {
      'questionText': 'Enter the missing number: 200, 188, 152, 80, 8, ?',
      'image':'',
      'answers': [
        {'text': '16', 'score': 0},
        {'text': '-16', 'score': 0},
        {'text': '-8', 'score': 0},
        {'text': '8', 'score': 1}
      ]
    },
    {
      'questionText': 'Finish the sentence, Gym is to Healthy as Book is to ?',
      'image':'',
      'answers': [
        {'text': 'Knowledgeable', 'score': 1},
        {'text': 'Good', 'score': 0},
        {'text': 'Intelligent', 'score': 0},
        {'text': 'Fluent', 'score': 0}
      ]
    },
    {
      'questionText': '',
      'image':'assets/images/iq2.png',
      'answers': [
        {'text': 'B', 'score': 1},
        {'text': 'C', 'score': 0},
        {'text': 'D', 'score': 0},
        {'text': 'A', 'score': 0}
      ]
    },
    {
      'questionText': 'What, with reference to this question, is the next number in the sequence below?\n3, 3, 5, 1, 3, 4, 1, 2, 3, 4, 1, 2, ?',
      'image':'',
      'answers': [
        {'text': '5', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '6', 'score': 0}
      ]
    },
    {
      'questionText': 'What number should replace the question mark?',
      'image':'assets/images/iq3.png',
      'answers': [
        {'text': '14°', 'score': 0},
        {'text': '24°', 'score': 0},
        {'text': '51', 'score': 0},
        {'text': '45', 'score': 1}
      ]
    },
    {
      'questionText': 'Which one of these is not a vegetable?',
      'image':'',
      'answers': [
        {'text': 'XESTTE', 'score': 1},
        {'text': 'ROCART', 'score': 0},
        {'text': 'EYECLR', 'score': 0},
        {'text': 'ROMRAW', 'score': 0}
      ]
    },
    {
      'questionText': 'Enter the missing number: 3, 4, 8, 17, 33, ?',
      'image':'',
      'answers': [
        {'text': '50', 'score': 0},
        {'text': '58', 'score': 1},
        {'text': '66', 'score': 0},
        {'text': '99', 'score': 0}
      ]
    },
    {
      'questionText': 'Find the figure continuing the series',
      'image':'assets/images/iq4.png',
      'answers': [
        {'text': 'd', 'score': 0},
        {'text': 'c', 'score': 0},
        {'text': 'b', 'score': 1},
        {'text': 'a', 'score': 0}
      ]
    },
    {
      'questionText': 'We have 4 dice, 3 of these dice are the same, the fourth is not.\nFind it!',
      'image':'assets/images/iq5.png',
      'answers': [
        {'text': 'a', 'score': 0},
        {'text': 'd', 'score': 1},
        {'text': 'c', 'score': 0},
        {'text': 'b', 'score': 0}
      ]
    },
    {
      'questionText': 'How many lines appear below?',
      'image':'assets/images/iq6.png',
      'answers': [
        {'text': '11', 'score': 1},
        {'text': '8', 'score': 0},
        {'text': '13', 'score': 0},
        {'text': '17', 'score': 0}
      ]
    },
    {
      'questionText': '586 : 46\n374 :25\nWhich numbers below have the same relationship as the numbers above?',
      'image':'',
      'answers': [
        {'text': '832 : 26', 'score': 1},
        {'text': '246 : 48', 'score': 0},
        {'text': '319 : 13', 'score': 0},
        {'text': '642 : 20', 'score': 0}
      ]
    },
    {
      'questionText': 'What number should replace the question mark?',
      'image':'assets/images/iq7.png',
      'answers': [
        {'text': '44', 'score': 0},
        {'text': '53', 'score': 1},
        {'text': '20', 'score': 0},
        {'text': '38', 'score': 0}
      ]
    },
    {
      'questionText': 'Enter the missing number: 2, 9, 20, 37, 64, 107, ?',
      'image':'',
      'answers': [
        {'text': '107', 'score': 0},
        {'text': '174', 'score': 1},
        {'text': '214', 'score': 0},
        {'text': '173', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of A, B, C or Dis the odd one out?',
      'image':'assets/images/iq8.png',
      'answers': [
        {'text': 'B', 'score': 1},
        {'text': 'C', 'score': 0},
        {'text': 'D', 'score': 0},
        {'text': 'A', 'score': 0}
      ]
    },
    {
      'questionText': 'Find the figure continuing the series',
      'image':'assets/images/iq9.png',
      'answers': [
        {'text': 'd', 'score': 0},
        {'text': 'a', 'score': 0},
        {'text': 'b', 'score': 0},
        {'text': 'c', 'score': 1}
      ]
    },
    {
      'questionText': 'What numbers should replace the question marks?',
      'image':'assets/images/iq10.png',
      'answers': [
        {'text': '9,11', 'score': 1},
        {'text': '10: 12', 'score': 0},
        {'text': '13, 14', 'score': 0},
        {'text': '7,8', 'score': 0}
      ]
    },
    {
      'questionText': '',
      'image':'assets/images/iq11.png',
      'answers': [
        {'text': 'D', 'score': 1},
        {'text': 'C', 'score': 0},
        {'text': 'A', 'score': 0},
        {'text': 'B', 'score': 0}
      ]
    },
    {
      'questionText': 'Find the figure continuing the series',
      'image':'assets/images/iq12.png',
      'answers': [
        {'text': 'a', 'score': 0},
        {'text': 'b', 'score': 0},
        {'text': 'c', 'score': 1},
        {'text': 'd', 'score': 0}
      ]
    },
    {
      'questionText': 'What number should replace the question mark?',
      'image':'assets/images/iq13.png',
      'answers': [
        {'text': '93', 'score': 0},
        {'text': '77', 'score': 0},
        {'text': '45', 'score': 1},
        {'text': '80', 'score': 0}
      ]
    },
    {
      'questionText': 'Find the figure continuing the series',
      'image':'assets/images/iq14.png',
      'answers': [
        {'text': 'd', 'score': 1},
        {'text': 'b', 'score': 0},
        {'text': 'a', 'score': 0},
        {'text': 'c', 'score': 0}
      ]
    },
    {
      'questionText': 'Which number is the odd one out?',
      'image':'assets/images/iq15.png',
      'answers': [
        {'text': '16', 'score': 0},
        {'text': '18', 'score': 1},
        {'text': '9', 'score': 0},
        {'text': '5', 'score': 0}
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