import 'package:json_annotation/json_annotation.dart';

part 'trivia_question.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TriviaQuestion {
  String category;
  String type;
  String difficulty;
  String question;
  String correctAnswer;
  List<String> incorrectAnswers;

  TriviaQuestion({
    this.category,
    this.type,
    this.difficulty,
    this.question,
    this.correctAnswer,
    this.incorrectAnswers,
  });

  factory TriviaQuestion.fromJson(Map<String, dynamic> json) =>
      _$TriviaQuestionFromJson(json);

  Map<String, dynamic> toJson() => _$TriviaQuestionToJson(this);
}
