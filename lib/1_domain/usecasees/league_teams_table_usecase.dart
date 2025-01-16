import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/repositories/league_teams_table_repo_impl.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/core/response.dart';

class LeagueTeamTableUsecase {
  final LeagueTeamsTableRepository leagueTeamTableRepository;
  final TeamPlayersRepository teamPlayersRepository;
  LeagueTeamTableUsecase({
    required this.leagueTeamTableRepository,
    required this.teamPlayersRepository,
  });

  Future<Either<FailureResponse, SuccessResponse<List<TeamTableEntity>>>>
      getLeagueTeamsTable(String leagueId) async {
    return await leagueTeamTableRepository.getList(leagueId);
  }

  Future<Either<FailureResponse, SuccessResponse<List<TeamPlayerEntity>>>>
      getTeamPlayers(String teamId) async {
    return await teamPlayersRepository.getList(teamId);
  }
}
