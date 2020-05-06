// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trivia_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriviaQuestion _$TriviaQuestionFromJson(Map<String, dynamic> json) {
  return TriviaQuestion(
    category: json['category'] as String,
    type: json['type'] as String,
    difficulty: json['difficulty'] as String,
    question: json['question'] as String,
    correctAnswer: json['correct_answer'] as String,
    incorrectAnswers:
        (json['incorrect_answers'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TriviaQuestionToJson(TriviaQuestion instance) =>
    <String, dynamic>{
      'category': instance.category,
      'type': instance.type,
      'difficulty': instance.difficulty,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
