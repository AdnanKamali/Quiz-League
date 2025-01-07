import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';
import 'package:quiz_league/1_domain/repositories/match_time_line_repository.dart';
import 'package:quiz_league/core/response.dart';

class MatchTimeLineRepoImpl implements MatchTimeLineRepository {
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;
  MatchTimeLineRepoImpl({required this.leagueRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<List<MatchTimeLineEntity>>>>
      getMatchesTimeLine() async {
    try {
      final result =
          await leagueRemoteDatasourceRestClient.getMatchesTimeLine();
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
