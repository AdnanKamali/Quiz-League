import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';
import 'package:quiz_league/1_domain/repositories/leagues_repository.dart';
import 'package:quiz_league/core/response.dart';

class LeaguesRepoImpl implements LeaguesRepository {
  const LeaguesRepoImpl({required this.leagueRemoteDatasourceRestClient});
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;
  @override
  Future<Either<FailureResponse, SuccessResponse<List<LeagueEntity>>>>
      getLeagues() async {
    try {
      final result = await leagueRemoteDatasourceRestClient.getLeagues();
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
