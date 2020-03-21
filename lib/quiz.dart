import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(this.question, this.answerQuestion, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
                //to get proper indentation shift+alt+f
                children: [
                  Question(question[questionIndex]['que']),
                  ...(question[questionIndex]['ans']
                          as List<Map<String, Object>>) //... changes list into widgets
                      .map((anss) {
                    return Answer(() => answerQuestion(anss['score']), anss['text']);
                  }).toList(),
                ],
              );
  }
}