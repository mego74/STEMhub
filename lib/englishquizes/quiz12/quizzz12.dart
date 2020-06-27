import 'package:flutter/material.dart';
import 'package:untitled7/englishquizes/quiz12/answer12.dart';
import 'package:untitled7/englishquizes/quiz12/question12.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {@required this.questions,
        @required this.answerQuestions,
        @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        questions[questionIndex]['image']==null || (questions[questionIndex]['image']as String).isEmpty? Container(): Image.asset(questions[questionIndex]['image']),
        Column(children:(questions[questionIndex]['answers'] as List<Map<String,Object>>).map<Widget>((answers) {
          return Answer(()=>answerQuestions(answers['score']), answers['text']);
        }).toList())
      ],
    );
  }
}