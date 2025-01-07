import 'package:quiz_league/0_data/models/teams_model/team_model.dart';

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

class TeamEntity {
  final int id;
  final String name;
  final String logo;

  TeamEntity({required this.id, required this.name, required this.logo});

  factory TeamEntity.fromModel(TeamModel model) => TeamEntity(
        id: model.id,
        name: model.name,
        logo: model.logo,
      );
}

class TeamTableEntity {
  final TeamEntity teamEntity;
  final int points;
  final TeamTableInfoEntity teamTableInfoEntity;

  TeamTableEntity({
    required this.teamEntity,
    required this.points,
    required this.teamTableInfoEntity,
  });
}

class TeamPlayerEntity {
  final String name;

  TeamPlayerEntity({required this.name});
}
