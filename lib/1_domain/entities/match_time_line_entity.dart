import 'package:quiz_league/0_data/models/match_time_line_model/match_time_line_model.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';

class MatchTimeLineEntity {
  final int id;
  final LeagueEntity leagueEntity;

  final TeamEntity firstTeamEntity;
  final TeamEntity secondTeamEntity;

  final int firstTeamScore;
  final int secondTeamScore;

  final DateTime startTime;
  final DateTime? endTime;

  MatchTimeLineEntity({
    required this.id,
    required this.leagueEntity,
    required this.startTime,
    required this.firstTeamScore,
    required this.secondTeamScore,
    required this.firstTeamEntity,
    required this.secondTeamEntity,
    required this.endTime,
  });

  factory MatchTimeLineEntity.fromModel(MatchTimeLineModel model) =>
      MatchTimeLineEntity(
        id: model.id,
        endTime: model.endTime,
        firstTeamEntity: model.firstTeamEntity,
        leagueEntity: model.leagueEntity,
        secondTeamEntity: model.secondTeamEntity,
        startTime: model.startTime,
        firstTeamScore: model.firstTeamScore,
        secondTeamScore: model.secondTeamScore,
      );
}
