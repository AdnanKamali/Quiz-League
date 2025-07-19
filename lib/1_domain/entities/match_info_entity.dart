import 'package:quiz_league/0_data/models/match_info_model/match_info_model.dart';
import 'package:quiz_league/1_domain/entities/core/match.dart';

enum MatchStatus { not_yet_started, started, ended }

class MatchInfoEntity extends MatchEntity {
  final MatchStatus matchStatus;
  final int hostTeamScore;
  final int guestTeamScore;

  MatchInfoEntity(
    this.matchStatus,
    this.hostTeamScore,
    this.guestTeamScore, {
    required super.id,
    required super.hostTeam,
    required super.guestTeam,
  });
}
