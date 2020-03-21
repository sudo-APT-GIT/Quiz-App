import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;// runtime constant value is 'final'

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(
      questionText,
      style: TextStyle(fontSize: 25, color: Colors.deepPurple),
      textAlign: TextAlign.center,
    )
    
    );
  }
}
