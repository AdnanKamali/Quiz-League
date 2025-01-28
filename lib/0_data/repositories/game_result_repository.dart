import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/1_domain/data_types/interfaces/get_object_interface.dart';
import 'package:quiz_league/core/response.dart';

class GameResultRepository implements GetObjectInterface<int, int> {
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient;
  GameResultRepository({required this.leagueRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<int>>> getObject(
      int matchId) async {
    try {
      final result =
          await leagueRemoteDatasourceRestClient.postGameResult(matchId);
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
