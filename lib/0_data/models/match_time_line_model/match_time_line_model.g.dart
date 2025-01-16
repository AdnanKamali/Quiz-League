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
      hostTeamScore: (json['host_team_score'] as num).toInt(),
      guestTeamScore: (json['guest_team_score'] as num).toInt(),
      league: LeagueModel.fromJson(json['league'] as Map<String, dynamic>),
      hostTeam: TeamModel.fromJson(json['host_team'] as Map<String, dynamic>),
      guestTeam: TeamModel.fromJson(json['guest_team'] as Map<String, dynamic>),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
    );

Map<String, dynamic> _$$MatchTimeLineModelImplToJson(
        _$MatchTimeLineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_time': instance.startTime.toIso8601String(),
      'host_team_score': instance.hostTeamScore,
      'guest_team_score': instance.guestTeamScore,
      'league': instance.league,
      'host_team': instance.hostTeam,
      'guest_team': instance.guestTeam,
      'end_time': instance.endTime?.toIso8601String(),
    };
