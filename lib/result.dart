import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int _resultScore;

  Result(this._resultScore);

  String get resultText {
    var resultText = 'Testni yakunladingiz!' + '\n' + 'Sizning natijangiz: ' + _resultScore.toString() + ' ball';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        resultText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}