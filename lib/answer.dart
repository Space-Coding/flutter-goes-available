import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _pressHandler;
  final String _answerText;

  Answer(this._pressHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        onPressed: _pressHandler,
        child: Text(_answerText),
      ),
    );
  }
}
