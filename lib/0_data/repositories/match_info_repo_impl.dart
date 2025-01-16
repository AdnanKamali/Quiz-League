import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/1_domain/repositories/get_object_interface.dart';
import 'package:quiz_league/core/response.dart';

class MatchInfoRepository
    implements GetObjectInterface<MatchInfoEntity, String> {
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;
  MatchInfoRepository({required this.leagueRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<MatchInfoEntity>>> getObject(
      String matchId) async {
    try {
      final result =
          await leagueRemoteDatasourceRestClient.getMatchInfo(matchId);
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
