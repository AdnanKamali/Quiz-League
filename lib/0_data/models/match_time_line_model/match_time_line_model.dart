import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/0_data/models/league_model/league_model.dart';
import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';

import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';

part 'match_time_line_model.freezed.dart';
part 'match_time_line_model.g.dart';

@freezed
class MatchTimeLineModel extends MatchTimeLineEntity with _$MatchTimeLineModel {
  const factory MatchTimeLineModel({
    required int id,
    @JsonKey(name: "start_time") required DateTime startTime,
    @JsonKey(name: "first_team_score") required int firstTeamScore,
    @JsonKey(name: "second_team_score") required int secondTeamScore,
    required LeagueModel league,
    @JsonKey(name: "first_team") required TeamModel firstTeam,
    @JsonKey(name: "second_team") required TeamModel secondTeam,
    @JsonKey(name: "end_time") required DateTime? endTime,
  }) = _MatchTimeLineModel;

  factory MatchTimeLineModel.fromJson(Map<String, Object?> json) =>
      _$MatchTimeLineModelFromJson(json);
}
