// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerReportModel _$AnswerReportModelFromJson(Map<String, dynamic> json) =>
    AnswerReportModel(
      matchId: (json['match'] as num).toInt(),
      teamId: (json['team'] as num).toInt(),
      questionId: (json['question'] as num).toInt(),
      isCorrectAnswer: json['is_correct'] as bool,
      selectedOptionId: (json['selected_option'] as num?)?.toInt(),
      textAnswer: json['text_answer'] as String?,
    );

Map<String, dynamic> _$AnswerReportModelToJson(AnswerReportModel instance) =>
    <String, dynamic>{
      'match': instance.matchId,
      'team': instance.teamId,
      'question': instance.questionId,
      'selected_option': instance.selectedOptionId,
      'text_answer': instance.textAnswer,
      'is_correct': instance.isCorrectAnswer,
    };
