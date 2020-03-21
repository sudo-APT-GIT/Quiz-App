import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //shortcut st
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // underscore changes class to private

  final _question = const [
    //const is compile time constant (implies runtime constant)
    {
      'que': 'What\'s your favourite color?',
      'ans': [
        {'text': 'Black', 'score': 30},
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 1},
        {'text': 'White', 'score': 5}
      ]
    },
    {
      'que': 'What\'s your favourite animal?',
      'ans': [
        {'text': 'Catto', 'score': 30},
        {'text': 'Rat', 'score': 10},
        {'text': 'Doggo', 'score': 1},
        {'text': 'Lion', 'score': 5}
      ]
    },
    {
      'que': 'What\'s your favourite cuisine?',
      'ans': [
        {'text': 'Chinese', 'score': 30},
        {'text': 'Thai', 'score': 10},
        {'text': 'Indian', 'score': 1},
        {'text': 'Japanese', 'score': 5}
      ]
    },

    {
      'que': 'What\'s your favourite Holiday Destination?',
      'ans': [
        {'text': 'Bali', 'score': 30},
        {'text': 'Africa', 'score': 10},
        {'text': 'Budapest', 'score': 1},
        {'text': 'Gujrat', 'score': 5}
      ]
    },
  ];

  var _questionIndex = 0; // underscore makes sure that all the methods and
  var _totalScore=0;
  void _resetQuiz() {
    setState(() {
     _questionIndex = 0; // underscore makes sure that all the methods and
    _totalScore=0;
    });
   
  }
  void _answerQuestion(int score) {
    //variables are used only inside MyApp class and nowhere else

    _totalScore+=score;

    setState(() {
      _questionIndex += 1;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    // var dummy=const['heloo'];
    // dummy.add('max');
    // print (dummy); // will give error during runtime
    //question=[]; //does not work if question is a const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //ctrl+space to get options for methods
          title: Text('My First App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(_question, _answerQuestion, _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
