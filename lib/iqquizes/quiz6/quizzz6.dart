import 'package:flutter/material.dart';
import 'package:untitled7/iqquizes/quiz6/answer6.dart';
import 'package:untitled7/iqquizes/quiz6/question6.dart';

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
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answers) {
          return Answer(()=>answerQuestions(answers['score']), answers['text']);
        }).toList()
      ],
    );
  }
}