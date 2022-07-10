import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final VoidCallback _resetHandler;

  Result(this._resultScore, this._resetHandler);

  String get resultText {
    var resultText = 'Testni yakunladingiz!' +
        '\n' +
        'Sizning natijangiz: ' +
        _resultScore.toString() +
        ' ball';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.orange,
              side: BorderSide(color: Colors.orange),
            ),
            onPressed: _resetHandler,
            child: Text('Testni qayta boshlash'),
          ),
        ],
      ),
    );
  }
}
