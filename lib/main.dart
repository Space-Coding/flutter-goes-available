import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  var _resultScore;
  var _isQuizFinished = false;

  void _finishQuiz(int score) {
    setState(() {
      _resultScore = score;
      _isQuizFinished = true;
    });
  }

  void _resetQuiz(){
    setState(() {
      _isQuizFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mantiqiy savollar'),
        ),
        body: Column(
          children: [
            _isQuizFinished ? Result(_resultScore, _resetQuiz) : Quiz(_finishQuiz),
            SizedBox(height: 200),
            Text('FirstApp by Shohijahon Ikromov 10.07.2020'),
          ],
        ),
      ),
    );
  }
}
