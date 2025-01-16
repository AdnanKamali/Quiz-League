import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:quiz_league/1_domain/entities/core/card.dart';

class TeamTableInfoEntity {
  final int games;
  final int wins;
  final int lost;
  final int draws;
  final int diffrent;

  TeamTableInfoEntity({
    required this.games,
    required this.wins,
    required this.lost,
    required this.draws,
    required this.diffrent,
  });

  factory TeamTableInfoEntity.fromModel(TeamTableInfoModel model) =>
      TeamTableInfoEntity(
        games: model.games,
        wins: model.wins,
        lost: model.lost,
        draws: model.draws,
        diffrent: model.diffrent,
      );
}

class TeamEntity extends CardEntity {
  TeamEntity({required super.id, required super.name, required super.logo});

  factory TeamEntity.fromModel(TeamModel model) => TeamEntity(
        id: model.id,
        name: model.name,
        logo: model.logo,
      );
}

class TeamTableEntity extends TeamEntity {
  final int points;
  final TeamTableInfoEntity teamTableInfoEntity;

  TeamTableEntity({
    required this.points,
    required this.teamTableInfoEntity,
    required super.id,
    required super.name,
    required super.logo,
  });
}

class TeamPlayerEntity {
  final String name;

  TeamPlayerEntity({required this.name});
}
