import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:quiz_league/0_data/models/league_model/league_model.dart';
import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';

import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';

part 'match_time_line_model.freezed.dart';
part 'match_time_line_model.g.dart';

@freezed
class MatchTimeLineModel extends MatchTimeLineEntity with _$MatchTimeLineModel {
  const factory MatchTimeLineModel({
    required int id,
    @JsonKey(name: "start_time") required DateTime startTime,
    @JsonKey(name: "host_team_score") required int hostTeamScore,
    @JsonKey(name: "guest_team_score") required int guestTeamScore,
    required LeagueModel league,
    @JsonKey(name: "host_team") required TeamModel hostTeam,
    @JsonKey(name: "guest_team") required TeamModel guestTeam,
    @JsonKey(name: "end_time") required DateTime? endTime,
  }) = _MatchTimeLineModel;

  factory MatchTimeLineModel.fromJson(Map<String, Object?> json) =>
      _$MatchTimeLineModelFromJson(json);
}
