// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:quiz_league/data/models/question_option_model/question_option_model.dart';

part "question_model.g.dart";

enum QuestionType {
  MCQ,
  TEXT,
}

@JsonSerializable()
class QuestionModel {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'question_type')
  QuestionType questionType;

  @JsonKey(name: 'text')
  String text;

  @JsonKey(name: 'options')
  List<QuestionOptionModel>? options;

  QuestionModel({
    required this.id,
    required this.text,
    required this.questionType,
    this.options,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
