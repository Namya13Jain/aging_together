import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

class SelfTest extends StatefulWidget {
  static const routeName = '/self-test';

  @override
  State<SelfTest> createState() => _SelfTestState();
}

class _SelfTestState extends State<SelfTest> {
  final _questions = const [
    {
      'questionText': 'For what duration do you need the caretaker?',
      'answers': [
        {'text': '1 week', 'score': 1},
        {'text': '2 week', 'score': 1},
        {'text': '3 weeks', 'score': 1},
        {'text': '1 month ', 'score': 1},
        {'text': '3 months ', 'score': 1},
        {'text': '6 months ', 'score': 1},
      ],
    },
    {
      'questionText': 'Select the prefernce for the gender of the caretaker?',
      'answers': [
        {'text': 'Female', 'score': 1},
        {'text': 'Male', 'score': 1},
        {'text': 'No preference', 'score': 1},
      ],
    },
    {
      'questionText': 'For what tasks do you need the caretaker?',
      'answers': [
        {'text': 'Cooking food for me', 'score': 1},
        {'text': 'Taking me out for walks and shopping', 'score': 1},
        {'text': 'Washing my clothes', 'score': 1},
        {'text': 'Nursing me', 'score': 1},
        {'text': 'Performs every tasks for me', 'score': 1},
      ],
    },
    {
      'questionText':
          'For how many hours of the day do you require the caretaker?',
      'answers': [
        {'text': '3 hours', 'score': 1},
        {'text': '6 hours', 'score': 1},
        {'text': '10 hours', 'score': 1},
        {'text': '12 hours', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScoreDepression = 0;

  void _answerQuestionDepression(int score) {
    _totalScoreDepression = _totalScoreDepression + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.8,
        title: const Text(
          'Book Caretaker',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestionDepression,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(
              _totalScoreDepression,
            ),
    );
  }
}
