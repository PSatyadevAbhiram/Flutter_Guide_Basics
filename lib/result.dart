import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  Result(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      child: Text('Restart Quiz'),
      onPressed: resetHandler,
      textColor: Colors.blue,
    ));
  }
}
