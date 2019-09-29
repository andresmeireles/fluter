import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resertAction;

  Result({this.totalScore, this.resertAction});

  String get returnMessage {
    String message = "You did it!";
    message += " \n Your score is " + totalScore.toString();
    if (totalScore > 10) {
      message += "\n You are a good dude!";
    } else {
      message += "\n You are a excelent dude!";
    }

    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            returnMessage,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Reset quiz!"),
            onPressed: () => resertAction(),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
