import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'YAAAAYEEEET';
    } else if (resultScore <= 12) {
      resultText = 'meh, youre alright I guess';
    } else if (resultScore <= 16) {
      resultText = 'Yo what\'s wrong with you??';
    } else {
      resultText = 'YOU SUCK LOSER';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
      FlatButton(
        child: Text('Restart Quiz!'),
        textColor: Colors.blue,
        onPressed: resetHandler,
      )
    ]));
  }
}
