import 'package:quiz_league/0_data/models/match_info_model/match_info_model.dart';
import 'package:quiz_league/1_domain/entities/core/match.dart';

class MatchInfoEntity extends MatchEntity {
  MatchInfoEntity({
    required super.id,
    required super.hostTeam,
    required super.guestTeam,
  });

  factory MatchInfoEntity.fromModel(MatchInfoModel model) => MatchInfoEntity(
        id: model.id,
        hostTeam: model.hostTeam,
        guestTeam: model.guestTeam,
      );
}
