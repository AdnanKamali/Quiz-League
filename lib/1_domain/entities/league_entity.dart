import 'package:quiz_league/0_data/models/league_model/league_model.dart';

class LeagueEntity {
  final int id;
  final String logo;
  final String name;

  LeagueEntity({
    required this.id,
    required this.logo,
    required this.name,
  });

  factory LeagueEntity.fromModel(LeagueModel model) => LeagueEntity(
        id: model.id,
        logo: model.logo,
        name: model.name,
      );
}
