import 'package:json_annotation/json_annotation.dart';

part "answer_report_model.g.dart";

@JsonSerializable()
class AnswerReportModel {
  @JsonKey(name: 'match')
  int matchId;
  @JsonKey(name: 'team')
  int teamId;
  @JsonKey(name: 'question')
  int questionId;
  @JsonKey(name: 'selected_option')
  int? selectedOptionId;

  @JsonKey(name: 'text_answer')
  String? textAnswer;

  @JsonKey(name: 'is_correct')
  bool isCorrectAnswer;

  AnswerReportModel({
    required this.matchId,
    required this.teamId,
    required this.questionId,
    required this.isCorrectAnswer,
    this.selectedOptionId,
    this.textAnswer,
  });

  factory AnswerReportModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerReportModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerReportModelToJson(this);
}
