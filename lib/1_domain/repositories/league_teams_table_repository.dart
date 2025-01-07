import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/core/response.dart';

abstract class LeagueTeamTableRepository {
  Future<Either<FailureResponse, SuccessResponse<List<TeamTableEntity>>>>
      getLeagueTeamsTable(String leagueId);
  Future<Either<FailureResponse, SuccessResponse<List<TeamPlayerEntity>>>>
      getTeamPlayers(String teamId);
}
