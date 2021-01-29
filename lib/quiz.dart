import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),

        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //map to Answer() widget and as List<String> to insure type
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
        //three dot spread operater, takes an internal list and adds it to
        //its parent list. so it is adding the values in this list to the
        //children[] list as values and not lists
      ],
    );
  }
}
