import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is the SI unit of Force?',
      'options': ['Newton', 'Pascal', 'Joule', 'Watt'],
      'answerIndex': 0,
    },
    {
      'questionText': 'Which organelle is known as the powerhouse of the cell?',
      'options': ['Nucleus', 'Mitochondria', 'Ribosome', 'Lysosome'],
      'answerIndex': 1,
    },
  ];
  int _currentIndex = 0;
  int _score = 0;

  void _answerQuestion(int index) {
    if (index == _questions[_currentIndex]['answerIndex']) {
      _score++;
    }
    setState(() {
      _currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: _currentIndex < _questions.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_questions[_currentIndex]['questionText'] as String,
                    style: TextStyle(fontSize: 20)),
                ...( _questions[_currentIndex]['options'] as List<String>).map((option) {
                  int index = (_questions[_currentIndex]['options'] as List<String>).indexOf(option);
                  return ElevatedButton(
                    onPressed: () => _answerQuestion(index),
                    child: Text(option),
                  );
                }).toList()
              ],
            )
          : Center(
              child: Text('Your score is $_score/${_questions.length}',
                  style: TextStyle(fontSize: 22)),
            ),
    );
  }
}
