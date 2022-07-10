import 'package:flutter/cupertino.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatefulWidget {
  final Function _finishQuiz;

  Quiz(this._finishQuiz);

  @override
  State<StatefulWidget> createState() {
    return _QuizState(_finishQuiz);
  }
}

class _QuizState extends State<Quiz> {
  final Function _finishQuiz;

  static const _questionList = [
    {
      'questionText': 'Alisher Navoiy qachon tug\'ilgan?',
      'answers': [
        {'text': '1441-yil', 'score': 10},
        {'text': 'XV asrda', 'score': 5},
        {'text': '1400-yillarda', 'score': 3},
        {'text': 'XV asrning birinchi yarmida', 'score': 7},
      ],
    },
    {
      'questionText': 'O\'zbekiston Respublikasining birinchi prezidenti kim?',
      'answers': [
        {'text': 'I. Karimov', 'score': 3},
        {'text': 'Islom Abdug\'aniyevich Karimov', 'score': 11},
        {'text': 'I.A. Karimov', 'score': 5},
        {'text': 'Islom Karimov', 'score': 9},
      ],
    },
    {
      'questionText': 'Tibbiyot spirti qanday bo\'ladi?',
      'answers': [
        {'text': 'Toza spirtning suvdagi 70% li eritmasi', 'score': 10},
        {'text': 'Etil spirti', 'score': 7},
        {'text': 'Tibbiyotda ishlatiladigan spirt eritmasi', 'score': 5},
        {'text': 'Aptekalardagi spirt', 'score': 2},
      ],
    },
    {
      'questionText': 'Sardor ismida nechta r harfi bor',
      'answers': [
        {'text': '2 ta bor', 'score': 10},
        {'text': '1 tadan ko\'p', 'score': 7},
        {'text': '5 tadan kam', 'score': 5},
        {'text': '10 tadan kam', 'score': 2},
      ],
    },
  ];

  var _listIndex = 0;

  var _score = 0;

  void _answerFunction(int score) {
    setState(() {
      _score += score;
      _listIndex++;
      if (_listIndex >= _questionList.length) {
        _finishQuiz(_score);
      }
    });
  }

  _QuizState(this._finishQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Question(_questionList[_listIndex]['questionText'] as String),
        ),
        ...(_questionList[_listIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => _answerFunction(answer['score'] as int), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
