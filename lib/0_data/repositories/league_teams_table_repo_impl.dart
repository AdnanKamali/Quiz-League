import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/repositories/league_teams_table_repository.dart';
import 'package:quiz_league/core/response.dart';

class LeagueTeamsTableRepoImpl implements LeagueTeamTableRepository {
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;
  LeagueTeamsTableRepoImpl({required this.leagueRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<List<TeamTableEntity>>>>
      getLeagueTeamsTable(String leagueId) async {
    try {
      final result = await leagueRemoteDatasourceRestClient.getTeams(leagueId);
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }

  @override
  Future<Either<FailureResponse, SuccessResponse<List<TeamPlayerEntity>>>>
      getTeamPlayers(String teamId) async {
    try {
      final result = await leagueRemoteDatasourceRestClient.getPlayers(teamId);
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
