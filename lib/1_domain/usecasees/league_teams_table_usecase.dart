import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/repositories/league_teams_table_repository.dart';
import 'package:quiz_league/core/response.dart';

class LeagueTeamTableUsecase {
  final LeagueTeamTableRepository leagueTeamTableRepository;
  LeagueTeamTableUsecase({required this.leagueTeamTableRepository});

  Future<Either<FailureResponse, SuccessResponse<List<TeamTableEntity>>>>
      getLeagueTeamsTable(String leagueId) async {
    return await leagueTeamTableRepository.getLeagueTeamsTable(leagueId);
  }

  Future<Either<FailureResponse, SuccessResponse<List<TeamPlayerEntity>>>>
      getTeamPlayers(String teamId) async {
    return await leagueTeamTableRepository.getTeamPlayers(teamId);
  }
}
