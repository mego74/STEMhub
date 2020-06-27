import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/finaltests/englishtest/resultEN.dart';
import 'package:untitled7/finaltests/englishtest/quizzzEN.dart';



void main() => runApp(QuizEN());

class QuizEN extends StatelessWidget {
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

      'questionText': 'Which best defines the meaning of incineration as it is used in the text?',
      'image':'assets/images/english1.png',
      'answers': [
        {'text': 'To bury waste materials in a large hole', 'score': 0},
        {'text': 'To burn waste materials and harvest the energy', 'score': 1},
        {'text': 'To allow waste products to decompose and become fertilizer', 'score': 0},
        {'text': 'To turn waste materials into products like book covers', 'score': 0}
      ]
    }, {
      'questionText': 'Which title best expresses the main idea of this text?',
      'image':'assets/images/english1.png',
      'answers': [
        {'text': 'The Magic of Recycling: Bringing Back What Was Once Lost', 'score': 0},
        {'text': 'Methods of Waste Management: Pros and Cons ', 'score': 1},
        {'text': 'Recycling, Landfilling, or Composting: Which is Best For You?', 'score': 0},
        {'text': 'Do Your Part: How to Save the Earth by Recycling and Composting', 'score':0}
      ]
    }, {
      'questionText': 'Which is not included in this text? ',
      'image':'assets/images/english1.png',
      'answers': [
        {'text': 'A description of how trash is collected', 'score': 1},
        {'text': 'A description of the uses of compost', 'score': 0},
        {'text': 'A description of the two methods of incinerating trash', 'score': 0},
        {'text': 'A description of how landfills have advanced over time', 'score': 0}
      ]
    },{
      'questionText': 'Which best expresses the author\'s main purpose in writing this? ',
      'image':'assets/images/english1.png',
      'answers': [
        {'text': 'To convince readers to recycle and compost', 'score': 0},
        {'text': 'To persuade readers that recycling is a waste of resources', 'score': 0},
        {'text': 'To inform readers of methods of waste management', 'score': 1},
        {'text': 'To compare and contrast recycling and landfilling', 'score': 0}
      ]
    },{
      'questionText': 'Which best explains why composting is not feasible on a large scale?',
      'image':'assets/images/english1.png',
      'answers': [
        {'text': 'People wouldn\'t want to touch all of that gross rotting food.', 'score': 0},
        {'text': 'Plastic would get into the compost and turn it into a pollutant.', 'score': 1},
        {'text': 'It would smell too bad in densely populated cities.', 'score': 0},
        {'text': 'It would attract rodents that would spread disease.', 'score': 0}
      ]
    }, {
      'questionText': 'Which conclusion could best be supported with text from the passage?',
      'image':'assets/images/english1.png',
      'answers': [
        {'text': 'Recycling is without a doubt the best way to handle waste.', 'score': 0},
        {'text': 'Each method of waste management has its drawbacks.', 'score': 1},
        {'text': 'Incineration is the best way to process waste.', 'score': 0},
        {'text': 'All large cities should create massive compost piles.', 'score': 0}
      ]
    },
    {
      'questionText': 'Based on the text, which best explains how black rats were introduced to Hawaii?',
      'image':'assets/images/english2.png',
      'answers': [
        {'text': 'The native Hawaiians imported them to solve a problem with their crops.', 'score': 0},
        {'text': 'The Asians brought them to Hawaii when they first arrived.', 'score': 0},
        {'text': 'The Europeans brought them on their ships.', 'score': 1},
        {'text': 'The rats were able to swim to Hawaii from Asia', 'score': 0}
      ]
    },
    {
      'questionText': 'Which statement would the author most likely disagree with?',
      'image':'assets/images/english2.png',
      'answers': [
        {'text': 'The only reason people dislike rats is because they are ugly.', 'score': 1},
        {'text': 'Black rats threaten many creatures native to Hawaii.', 'score': 0},
        {'text': 'Mongooses threaten many creatures native to Hawaii.', 'score': 0},
        {'text': 'Mongooses were brought to Hawaii intentionally.', 'score': 0}
      ]
    },
    {
      'questionText': 'Which statement is false according to information in the text?',
      'image':'assets/images/english2.png',
      'answers': [
        {'text': 'Mongooses have spread more than 40 diseases.', 'score': 1},
        {'text': 'Rats eat lots of vegetation and crops.', 'score': 0},
        {'text': 'Mongooses eat sea turtle eggs.', 'score': 0},
        {'text': 'Rats climb trees and eat bird eggs.', 'score': 0}
      ]
    },
    {
      'questionText': 'Which best explains why plantation owners imported mongooses to Hawaii?',
      'image':'assets/images/english2.png',
      'answers': [
        {'text': 'Mongooses make great household pets.', 'score': 0},
        {'text': 'Mongooses are fuzzy and adorable.', 'score': 0},
        {'text': 'Mongooses eat rats.', 'score': 1},
        {'text': 'Mongooses kill deadly cobras.', 'score': 0}
      ]
    },
    {
      'questionText': 'Which best defines the word revere as it is used in the sixth paragraph?',
      'image':'assets/images/english2.png',
      'answers': [
        {'text': 'To dislike someone or something', 'score': 0},
        {'text': 'To hunt someone or something', 'score': 0},
        {'text': 'To respect someone or something', 'score': 1},
        {'text': 'To get rid of someone or something', 'score': 0}
      ]
    },
    {
      'questionText': 'Which best defines the word originate as it was used in the second paragraph?',
      'image':'assets/images/english2.png',
      'answers': [
        {'text': 'To become independent', 'score': 0},
        {'text': 'To go to a place', 'score': 0},
        {'text': 'To come from a place', 'score': 1},
        {'text': 'To wander the world', 'score': 0}
      ]
    },
    {
      'questionText': 'If the others hadn’t voted in favor of the younger candidate, I probably wouldn’t have done so ____. ',
      'image':'',
      'answers': [
        {'text': 'either', 'score': 1},
        {'text': 'even', 'score': 0},
        {'text': 'too', 'score': 0},
        {'text': 'also', 'score': 0}
      ]
    },
    {
      'questionText': 'Scientists rely on computers to model phenomena ____ would ____ be difficult to observe.',
      'image':'',
      'answers': [
        {'text': 'whereby / in case', 'score': 0},
        {'text': 'such as / nonetheless', 'score': 0},
        {'text': 'which / nevertheless', 'score': 0},
        {'text': 'that / otherwise', 'score': 1}
      ]
    },
    {
      'questionText': 'Most newspapers are of the opinion that if a majority of Scots really ____ independence, the British Parliament has no option but ____ to their wishes.',
      'image':'',
      'answers': [
        {'text': 'did want / had acceded', 'score': 0},
        {'text': 'do want / to accede', 'score': 1},
        {'text': 'wanted / have acceded', 'score': 0},
        {'text': 'had wanted / would have acceded', 'score': 0}
      ]
    },
    {
      'questionText': 'When the Italian astronomer Giovanni Schiaparelli ____ a map of Mars in 1877, he ____ a large number of straight linear features, which he called “canali” that is “channels”.',
      'image':'',
      'answers': [
        {'text': 'publishes / has noted', 'score': 0},
        {'text': 'had published / was noting', 'score': 0},
        {'text': 'has published / notes', 'score': 0},
        {'text': 'published / noted', 'score': 1}
      ]
    },
    {
      'questionText': '____ proving useful in many scientific fields, computers-generated knowledge, ____ Professor Hayes acknowledges, is not without pitfalls.',
      'image':'',
      'answers': [
        {'text': 'Although / because', 'score': 0},
        {'text': 'Since / while', 'score': 0},
        {'text': 'While / as', 'score': 1},
        {'text': 'As long as / even if', 'score': 0}
      ]
    },
    {
      'questionText': 'If we ____ the terms of the contract, all the paintwork in the building ____ finished by the 5th of next month.',
      'image':'',
      'answers': [
        {'text': 'are to meet / will have to be', 'score': 1},
        {'text': 'were meeting / will be', 'score': 0},
        {'text': 'met / would have had to be', 'score': 0},
        {'text': 'had met / is being', 'score': 0}
      ]
    },
    {
      'questionText': 'The editor thought that the new series of articles would prove very popular, but actually hardly ____ seems to have been impressed by it.',
      'image':'',
      'answers': [
        {'text': 'anyone', 'score': 1},
        {'text': 'nobody', 'score': 0},
        {'text': 'the other', 'score': 0},
        {'text': 'any other', 'score': 0}
      ]
    },
    {
      'questionText': 'Choose the word nearest in meaning to the word (AMBITION)',
      'image':'',
      'answers': [
        {'text': 'Plan', 'score': 0},
        {'text': 'Proclamation', 'score': 0},
        {'text': 'Decision', 'score': 0},
        {'text': 'Desire', 'score': 1}
      ]
    },
    {
      'questionText': 'The lawyer decided to call ____ of the witnesses only and paid no attention to ____ .',
      'image':'',
      'answers': [
        {'text': 'two / the others', 'score': 1},
        {'text': 'both / others', 'score': 0},
        {'text': 'the two / any other', 'score': 0},
        {'text': 'any / some others', 'score': 0}
      ]
    },
    {
      'questionText': 'meaningful : insignificant : essential : ________',
      'image':'',
      'answers': [
        {'text': 'unnecessary', 'score': 1},
        {'text': 'unremarkable', 'score': 0},
        {'text': 'important', 'score': 0},
        {'text': 'basic', 'score': 0}
      ]
    },
    {
      'questionText': ' I have always liked your positive attitude; it has ____ affected our working relationship.',
      'image':'',
      'answers': [
        {'text': 'adversely', 'score': 0},
        {'text': 'woefully', 'score': 0},
        {'text': 'favorably', 'score': 1},
        {'text': 'candidly', 'score': 0}
      ]
    },
    {
      'questionText': 'Have you heard the great news, Ali? The man, ____ refused your proposal last year, has been arrested for embezzlement of government funds.',
      'image':'',
      'answers': [
        {'text': 'who have repeatedly', 'score': 0},
        {'text': 'that', 'score': 0},
        {'text': 'whom', 'score': 0},
        {'text': 'whose daughter', 'score': 1}
      ]
    },
    {
      'questionText': 'I\'d like to have a word with you. Yes, but ____.',
      'image':'',
      'answers': [
        {'text': 'what do we have to talk about', 'score': 1},
        {'text': 'about what we have to talk', 'score': 0},
        {'text': 'what we have to talk about', 'score': 0},
        {'text': 'what about we have to talk', 'score': 0}
      ]
    },
    {
      'questionText': 'The boss urged the staff ____ this splendid opportunity he was offering them.',
      'image':'',
      'answers': [
        {'text': 'to miss', 'score': 0},
        {'text': 'not to miss', 'score': 1},
        {'text': 'why not miss', 'score': 0},
        {'text': 'about missing', 'score': 0}
      ]
    },
    {
      'questionText': 'Yes, I know you\'re tired and sleepy, but let me remind you one thing: If you ____ up all night to watch that stupid film, the world would look much brighter this morning, wouldn\'t it?!',
      'image':'',
      'answers': [
        {'text': 'wouldn\'t stay', 'score': 0},
        {'text': 'would have stayed ', 'score': 0},
        {'text': 'hadn\'t stayed', 'score': 1},
        {'text': 'had stayed', 'score': 0}
      ]
    },
    {
      'questionText': 'It seems to me that they never gave a thought to probable future problems when the plans ____ five years ago.',
      'image':'',
      'answers': [
        {'text': 'adversely', 'score': 0},
        {'text': 'woefully', 'score': 0},
        {'text': 'favorably', 'score': 1},
        {'text': 'candidly', 'score': 0}
      ]
    },
    {
      'questionText': ' I have always liked your positive attitude; it has ____ affected our working relationship.',
      'image':'',
      'answers': [
        {'text': 'they laid down', 'score': 0},
        {'text': 'were not laid down', 'score': 0},
        {'text': 'to be laid down', 'score': 0},
        {'text': 'were being laid down', 'score': 1}
      ]
    },
    {
      'questionText': 'I\'m ____ and ____ of seeing your stupid face around all the time.',
      'image':'',
      'answers': [
        {'text': 'sick , tired', 'score': 1},
        {'text': 'loving , fond', 'score': 0},
        {'text': 'jealous , angry', 'score': 0},
        {'text': 'bored , bothered', 'score': 0}
      ]
    },
    {
      'questionText': 'The king\'s speech ____ his followers with renewed hope and determination.',
      'image':'',
      'answers': [
        {'text': 'inspired', 'score': 1},
        {'text': 'perspired', 'score': 0},
        {'text': 'expired', 'score': 0},
        {'text': 'conspired', 'score': 0}
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