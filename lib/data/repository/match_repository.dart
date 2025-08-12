import 'package:dio/dio.dart';
import 'package:quiz_league/data/apis/match_api/match_api.dart';
import 'package:quiz_league/data/models/match_model/match_model.dart';
import 'package:quiz_league/utility/error_handler.dart';
import 'package:quiz_league/utility/error_response.dart';

import 'package:dartz/dartz.dart';

class MatchRepository {
  final MatchApi matchApi;

  MatchRepository({required this.matchApi});

  Future<Either<ErrorResponse, List<MatchModel>>> fetchMatches(
      String date) async {
    try {
      final matches = await matchApi.getMatchesTimeLines(date);
      return Right(matches);
    } on DioException catch (e) {
      return Left(errorHandler(e));
    }
  }

  Future<Either<ErrorResponse, MatchModel>> getMatch(int matchId) async {
    try {
      final match = await matchApi.getMatchDetail(matchId);
      return Right(match);
    } on DioException catch (e) {
      return Left(errorHandler(e));
    }
  }
}
