// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:quiz_league/data/models/league_model/league_model.dart';
import 'package:quiz_league/data/models/team_model/team_model.dart';

part "match_model.g.dart";

enum MatchStatus {
  SCHEDULED('هنوز شروع نشده'),
  IN_PROGRESS('در حال انجام'),
  FORFEITED('انصراف داده شده'),
  FINISHED('پایان یافته');

  final String label;
  const MatchStatus(this.label);
}

enum MatchTeamTurn { host, guest }

@JsonSerializable()
class MatchModel {
  @JsonKey(name: 'id')
  int id;

  LeagueModel league;
  MatchStatus status;

  @JsonKey(name: "team_turn")
  MatchTeamTurn teamTurn;

  @JsonKey(name: "host_team")
  TeamModel hostTeam;
  @JsonKey(name: "guest_team")
  TeamModel guestTeam;

  @JsonKey(name: "host_team_score")
  final int hostTeamScore;
  @JsonKey(name: "guest_team_score")
  final int guestTeamScore;

  @JsonKey(name: "start_time")
  final DateTime startTime;
  @JsonKey(name: "end_time")
  final DateTime? endTime;

  MatchModel({
    required this.id,
    required this.league,
    required this.teamTurn,
    required this.status,
    required this.hostTeam,
    required this.guestTeam,
    required this.hostTeamScore,
    required this.guestTeamScore,
    required this.startTime,
    required this.endTime,
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    return _$MatchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}
