// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamDetailModel _$TeamDetailModelFromJson(Map<String, dynamic> json) =>
    TeamDetailModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      gamePlayed: (json['game_played'] as num).toInt(),
      logo: json['logo'] as String,
      points: (json['points'] as num).toInt(),
      correctAnswer: (json['correct_answer'] as num).toInt(),
      wrongAnswer: (json['wrong_answer'] as num).toInt(),
      winRate: (json['win_rate'] as num).toInt(),
      loseRate: (json['lose_rate'] as num).toInt(),
      drawRate: (json['draw_rate'] as num).toInt(),
    );

Map<String, dynamic> _$TeamDetailModelToJson(TeamDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'game_played': instance.gamePlayed,
      'points': instance.points,
      'correct_answer': instance.correctAnswer,
      'wrong_answer': instance.wrongAnswer,
      'win_rate': instance.winRate,
      'lose_rate': instance.loseRate,
      'draw_rate': instance.drawRate,
    };
