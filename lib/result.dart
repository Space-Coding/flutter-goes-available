import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int _resultScore;

  Result(this._resultScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        'Testni yakunladingiz!' + '\n' + 'Sizning natijangiz: ' + _resultScore.toString() + ' ball',
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}