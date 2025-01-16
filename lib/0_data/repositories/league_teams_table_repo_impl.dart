import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/data_types/interfaces/get_list_interface.dart';
import 'package:quiz_league/core/response.dart';

class LeagueTeamsTableRepository
    implements GetListInterface<TeamTableModel, String> {
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;

  LeagueTeamsTableRepository({required this.leagueRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<List<TeamTableModel>>>>
      getList(String leagueId) async {
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
}

class TeamPlayersRepository
    implements GetListInterface<TeamPlayerEntity, String> {
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;

  TeamPlayersRepository({required this.leagueRemoteDatasourceRestClient});

  @override
  Future<Either<FailureResponse, SuccessResponse<List<TeamPlayerEntity>>>>
      getList(String teamId) async {
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
