import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quiz_league/data/apis/league_api/league_api.dart';
import 'package:quiz_league/data/models/team_model/team_detail_model.dart';
import 'package:quiz_league/utility/error_handler.dart';
import 'package:quiz_league/utility/error_response.dart';

class LeagueRepository {
  final LeagueApi leagueApi;

  LeagueRepository({required this.leagueApi});

  Future<Either<ErrorResponse, List<TeamDetailModel>>> getTeams(
      int leagueId) async {
    try {
      final teams = await leagueApi.getTeams(leagueId);
      return Right(teams);
    } on DioException catch (e) {
      return Left(errorHandler(e));
    }
  }
}
