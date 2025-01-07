// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_time_line_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchTimeLineModelImpl _$$MatchTimeLineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchTimeLineModelImpl(
      id: (json['id'] as num).toInt(),
      startTime: DateTime.parse(json['start_time'] as String),
      firstTeamScore: (json['first_team_score'] as num).toInt(),
      secondTeamScore: (json['second_team_score'] as num).toInt(),
      league: LeagueModel.fromJson(json['league'] as Map<String, dynamic>),
      firstTeam: TeamModel.fromJson(json['first_team'] as Map<String, dynamic>),
      secondTeam:
          TeamModel.fromJson(json['second_team'] as Map<String, dynamic>),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
    );

Map<String, dynamic> _$$MatchTimeLineModelImplToJson(
        _$MatchTimeLineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_time': instance.startTime.toIso8601String(),
      'first_team_score': instance.firstTeamScore,
      'second_team_score': instance.secondTeamScore,
      'league': instance.league,
      'first_team': instance.firstTeam,
      'second_team': instance.secondTeam,
      'end_time': instance.endTime?.toIso8601String(),
    };
