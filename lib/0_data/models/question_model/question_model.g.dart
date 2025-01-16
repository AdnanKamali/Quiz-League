// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionCategoryModelImpl _$$QuestionCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionCategoryModelImpl(
      id: (json['id'] as num).toInt(),
      logo: json['logo'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$QuestionCategoryModelImplToJson(
        _$QuestionCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'description': instance.description,
    };

_$QuestionOptionModelImpl _$$QuestionOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionOptionModelImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      isCorrect: json['is_correct'] as bool,
    );

Map<String, dynamic> _$$QuestionOptionModelImplToJson(
        _$QuestionOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'is_correct': instance.isCorrect,
    };

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      questionType: $enumDecode(_$QuestionTypeEnumMap, json['question_type']),
      image: json['image'] as String?,
      hint: json['hint'] as String?,
      questionOptions: (json['options'] as List<dynamic>)
          .map((e) => QuestionOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'question_type': _$QuestionTypeEnumMap[instance.questionType]!,
      'image': instance.image,
      'hint': instance.hint,
      'options': instance.questionOptions,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.MCQ_4: 'MCQ_4',
  QuestionType.MCQ_3: 'MCQ_3',
  QuestionType.MCQ_2: 'MCQ_2',
  QuestionType.TEXT: 'TEXT',
};
