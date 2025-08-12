import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quiz_league/data/apis/team_player_api/team_player_api.dart';
import 'package:quiz_league/data/models/team_model/team_player_model.dart';
import 'package:quiz_league/utility/error_handler.dart';
import 'package:quiz_league/utility/error_response.dart';

class TeamPlayerRepository {
  final TeamPlayerApi teamPlayerApi;

  TeamPlayerRepository({required this.teamPlayerApi});

  Future<Either<ErrorResponse, List<TeamPlayerModel>>> getPlayers(
      int teamId) async {
    try {
      return Right(await teamPlayerApi.getPlayers(teamId));
    } on DioException catch (e) {
      return Left(errorHandler(e));
    }
  }
}
