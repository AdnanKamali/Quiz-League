// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => MatchModel(
      id: (json['id'] as num).toInt(),
      league: LeagueModel.fromJson(json['league'] as Map<String, dynamic>),
      teamTurn: $enumDecode(_$MatchTeamTurnEnumMap, json['team_turn']),
      status: $enumDecode(_$MatchStatusEnumMap, json['status']),
      hostTeam: TeamModel.fromJson(json['host_team'] as Map<String, dynamic>),
      guestTeam: TeamModel.fromJson(json['guest_team'] as Map<String, dynamic>),
      hostTeamScore: (json['host_team_score'] as num).toInt(),
      guestTeamScore: (json['guest_team_score'] as num).toInt(),
      startTime: DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
    );

Map<String, dynamic> _$MatchModelToJson(MatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'league': instance.league,
      'status': _$MatchStatusEnumMap[instance.status]!,
      'team_turn': _$MatchTeamTurnEnumMap[instance.teamTurn]!,
      'host_team': instance.hostTeam,
      'guest_team': instance.guestTeam,
      'host_team_score': instance.hostTeamScore,
      'guest_team_score': instance.guestTeamScore,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };

const _$MatchTeamTurnEnumMap = {
  MatchTeamTurn.host: 'host',
  MatchTeamTurn.guest: 'guest',
};

const _$MatchStatusEnumMap = {
  MatchStatus.SCHEDULED: 'SCHEDULED',
  MatchStatus.IN_PROGRESS: 'IN_PROGRESS',
  MatchStatus.FORFEITED: 'FORFEITED',
  MatchStatus.FINISHED: 'FINISHED',
};
