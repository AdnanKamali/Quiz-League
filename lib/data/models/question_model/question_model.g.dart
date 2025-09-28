// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    QuestionModel(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      questionType: $enumDecode(_$QuestionTypeEnumMap, json['question_type']),
      hint: json['hint'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => QuestionOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_type': _$QuestionTypeEnumMap[instance.questionType]!,
      'text': instance.text,
      'hint': instance.hint,
      'options': instance.options,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.MCQ: 'MCQ',
  QuestionType.TEXT: 'TEXT',
};
