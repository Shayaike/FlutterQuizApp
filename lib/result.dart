import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 14) {
      resultText = 'pretty likeable!';
    } else if (resultScore <= 20) {
      resultText = 'You are ... strange?';
    } else {
      resultText = ' You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Your Scoure is $resultScore',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () => resetHandler(),
            child: Text('Restart Quiz'))
      ],
    ));
  }
}
