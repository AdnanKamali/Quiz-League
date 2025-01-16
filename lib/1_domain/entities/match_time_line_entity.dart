import 'package:quiz_league/0_data/models/match_time_line_model/match_time_line_model.dart';
import 'package:quiz_league/1_domain/entities/core/match.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';

class MatchTimeLineEntity extends MatchEntity {
  final LeagueEntity leagueEntity;

  final int hostTeamScore;
  final int guestTeamScore;

  final DateTime startTime;
  final DateTime? endTime;

  MatchTimeLineEntity({
    required super.id,
    required super.hostTeam,
    required super.guestTeam,
    required this.leagueEntity,
    required this.startTime,
    required this.hostTeamScore,
    required this.guestTeamScore,
    required this.endTime,
  });

  factory MatchTimeLineEntity.fromModel(MatchTimeLineModel model) =>
      MatchTimeLineEntity(
        id: model.id,
        endTime: model.endTime,
        hostTeam: model.hostTeam,
        guestTeam: model.guestTeam,
        leagueEntity: model.leagueEntity,
        startTime: model.startTime,
        hostTeamScore: model.hostTeamScore,
        guestTeamScore: model.guestTeamScore,
      );
}
