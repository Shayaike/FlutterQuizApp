import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 7},
        {'text': 'Yellow', 'score': 2},
        {'text': 'White', 'score': 1},
        {'text': 'Black', 'score': 10},
      ]
    },
    {
      'question': 'What\'s your favorite Food?',
      'answer': [
        {'text': 'Burger', 'score': 10},
        {'text': 'Beef', 'score': 5},
        {'text': 'Chicken', 'score': 3},
        {'text': 'Pizza', 'score': 7},
        {'text': 'Vegetables', 'score': 2},
        {'text': 'Fruit', 'score': 1},
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 3},
        {'text': 'Python', 'score': 7},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Deer', 'score': 5},
        {'text': 'Tiger', 'score': 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
