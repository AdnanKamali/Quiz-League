import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/1_domain/repositories/match_info_repository.dart';
import 'package:quiz_league/core/response.dart';

class MatchInfoRepoImpl implements MatchInfoRepository {
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;
  MatchInfoRepoImpl({required this.leagueRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<MatchInfoEntity>>>
      getMatchInfo(String matchId) async {
    try {
      final result =
          await leagueRemoteDatasourceRestClient.getMatchInfo(matchId);
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      print(e);
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
