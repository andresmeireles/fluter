import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerHandle;

  Answer({this.answerText, this.answerHandle });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: answerHandle,
        color: Colors.blue,
      ),
    );
  }
}
