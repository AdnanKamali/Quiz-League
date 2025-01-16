import 'package:quiz_league/0_data/models/league_model/league_model.dart';
import 'package:quiz_league/1_domain/entities/core/card.dart';

class LeagueEntity extends CardEntity {
  LeagueEntity({
    required super.id,
    required super.logo,
    required super.name,
  });

  factory LeagueEntity.fromModel(LeagueModel model) => LeagueEntity(
        id: model.id,
        logo: model.logo,
        name: model.name,
      );
}
