import 'package:quiz_league/1_domain/entities/team_entity.dart';

class MatchEntity {
  final int id;
  final TeamEntity hostTeam;
  final TeamEntity guestTeam;

  MatchEntity(
      {required this.id, required this.hostTeam, required this.guestTeam});
}
