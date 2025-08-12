// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionOptionModel _$QuestionOptionModelFromJson(Map<String, dynamic> json) =>
    QuestionOptionModel(
      id: (json['id'] as num?)?.toInt(),
      text: json['text'] as String?,
      isCorrect: json['is_correct'] as bool?,
    );

Map<String, dynamic> _$QuestionOptionModelToJson(
        QuestionOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'is_correct': instance.isCorrect,
    };
