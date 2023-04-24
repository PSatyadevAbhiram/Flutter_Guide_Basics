import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite football club?',
        'answers': ['MUFC', 'MCFC', 'LIV', 'CHE', 'ARS'],
      },
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ['Red', 'Blue', 'Green', 'Black'],
      },
      {
        'questionText': 'What\'s your favourite food?',
        'answers': ['Pizza', 'Pasta', 'Dosa', 'Noodles'],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first App'),
            ),
            body: questionIndex < questions.length
                ? Quiz(
                    answerQuestion: answerQuestion,
                    questionIndex: questionIndex,
                    questions: questions,
                  )
                : Result(resetQuiz)));
  }
}
