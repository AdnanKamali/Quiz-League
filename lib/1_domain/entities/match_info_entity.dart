import 'package:quiz_league/0_data/models/match_info_model/match_info_model.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';

class MatchInfoEntity {
  final int id;
  final TeamEntity firstTeam;
  final TeamEntity secondTeam;

  MatchInfoEntity({
    required this.id,
    required this.firstTeam,
    required this.secondTeam,
  });

  factory MatchInfoEntity.fromModel(MatchInfoModel model) => MatchInfoEntity(
        id: model.id,
        firstTeam: model.firstTeam,
        secondTeam: model.secondTeam,
      );
}
