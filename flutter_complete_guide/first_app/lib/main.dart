import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  final _listOfQuestions = const [
    {
      'question': 'Whats your favorete food',
      'answer': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Hamburger', 'score': 8},
        {'text': 'Soap', 'score': 3},
        {'text': 'Salad', 'score': 0},
      ]
    },
    {
      'question': 'Whats your pet name?',
      'answer': [
        {'text': 'chibiku', 'score': 0},
        {'text': 'pitu', 'score': 3},
        {'text': 'katiuska', 'score': 6},
        {'text': 'matroska', 'score': 9},
      ]
    },
    {
      'question': 'What\'s your favorite place in your house',
      'answer': [
        {'text': 'room', 'score': 3},
        {'text': 'bathroom', 'score': 7},
        {'text': 'kitchen', 'score': 10},
        {'text': 'yard', 'score': 0}
      ]
    }
  ];

  void resetQuiz() {
    /// Qualquer ação que tenha vá ter de resenhar ou alterar alguma 
    /// estado dentro do app precisa estar dentro de uma função
    /// setState
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void choseAnswer(int score) {
    _totalScore += score;
    /**
       * setState é um método que pode interagir com a interface, ele pode dar
       * comandos para que algo mude na interface
       */
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
    if (_questionIndex < _listOfQuestions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu bar, blue'),
        ),
        body: _questionIndex < _listOfQuestions.length
            ? Quiz(
                questionIndex: _questionIndex,
                listOfQuestions: _listOfQuestions,
                choseAnswer: choseAnswer,
              )
            : Result(totalScore: _totalScore, resertAction: resetQuiz),
      ),
    );
  }
}
