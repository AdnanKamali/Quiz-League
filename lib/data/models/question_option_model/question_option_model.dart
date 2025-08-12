import 'package:json_annotation/json_annotation.dart';

part "question_option_model.g.dart";

@JsonSerializable()
class QuestionOptionModel {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'is_correct')
  bool? isCorrect;

  QuestionOptionModel({
    this.id,
    this.text,
    this.isCorrect,
  });

  factory QuestionOptionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionOptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionOptionModelToJson(this);
}
