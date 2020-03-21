import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'YOU DID IT BABE!';
    if (resultScore <= 8) {
      resultText = 'You are awesome bub!';
    } else if (resultScore <= 16) {
      resultText = 'You are likeable bub!';
    } else if (resultScore <= 22) {
      resultText = 'You are .. strange bub!';
    } else {
      resultText = 'You are weird!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
            textColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
