import 'dart:ui';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  var _questionList = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  var _listIndex = 0;

  void _answerFunction() {
    setState(() {
      if (++_listIndex >= _questionList.length) {
        _listIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Question(_questionList[_listIndex]['questionText']),
            ),
            ...(_questionList[_listIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerFunction, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
