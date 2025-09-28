// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) =>
    SettingsModel(
      id: (json['id'] as num).toInt(),
      questionPerGame: (json['question_per_game'] as num).toInt(),
      timeOfEveryQuestion: (json['time_of_every_question'] as num).toInt(),
    );

Map<String, dynamic> _$SettingsModelToJson(SettingsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time_of_every_question': instance.timeOfEveryQuestion,
      'question_per_game': instance.questionPerGame,
    };
