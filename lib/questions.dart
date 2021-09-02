import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTest;
  Question(this.questionTest);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        questionTest,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
