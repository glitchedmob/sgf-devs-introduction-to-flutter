import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intro_app/models/trivia_question.dart';

class TriviaQuestionProvider extends ChangeNotifier {
  var questions = List<TriviaQuestion>();

  void addNewQuestion(TriviaQuestion question) {
    questions.add(question);
    notifyListeners();
  }

  Future fetchTriviaQuestions() async {
    var res =
        await http.get('https://opentdb.com/api.php?amount=20&category=18');

    var json = jsonDecode(res.body)['results'] as List<dynamic>;

    var triviaQuestions = json.map((t) => TriviaQuestion.fromJson(t)).toList();

    questions = triviaQuestions;
    notifyListeners();
  }
}
