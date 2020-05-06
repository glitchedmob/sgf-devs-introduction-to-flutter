import 'package:flutter/material.dart';
import 'package:intro_app/models/trivia_question.dart';
import 'package:provider/provider.dart';

import 'package:intro_app/provider/trivia_question_provider.dart';

class StateManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var triviaQuestionProvider = Provider.of<TriviaQuestionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('Load Trivia Questions'),
            onPressed: () {
              _addDummyTriviaData(triviaQuestionProvider);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: triviaQuestionProvider.questions.length,
              itemBuilder: (context, index) {
                var triviaQuestion = triviaQuestionProvider.questions[index];

                return ListTile(
                  title: Text(triviaQuestion.question),
                  onTap: () {
                    showPopup(context, triviaQuestion.correctAnswer);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future showPopup(context, message) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _addDummyTriviaData(TriviaQuestionProvider triviaQuestionProvider) {
    triviaQuestionProvider.addNewQuestion(
      TriviaQuestion(
        question:
            'What was the name of the security vulnerability found in Bash in 2014?',
        correctAnswer: 'Shellshock',
      ),
    );
    triviaQuestionProvider.addNewQuestion(
      TriviaQuestion(
        question:
        'What amount of bits commonly equals one byte?',
        correctAnswer: '8',
      ),
    );
    triviaQuestionProvider.addNewQuestion(
      TriviaQuestion(
        question:
        'In the server hosting industry IaaS stands for...',
        correctAnswer: 'Infrastructure as a Service',
      ),
    );
  }
}
