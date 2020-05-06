import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:intro_app/provider/trivia_question_provider.dart';

class NetworkingAndJsonScreen extends StatelessWidget {
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
              triviaQuestionProvider.fetchTriviaQuestions();
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
}
