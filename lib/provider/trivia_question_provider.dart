import 'package:flutter/material.dart';
import 'package:intro_app/models/trivia_question.dart';

class TriviaQuestionProvider extends ChangeNotifier {
  var questions = List<TriviaQuestion>();

  void addNewQuestion(TriviaQuestion question) {
    questions.add(question);
    notifyListeners();
  }
}