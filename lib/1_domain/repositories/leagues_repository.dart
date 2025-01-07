import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';
import 'package:quiz_league/core/response.dart';

abstract class LeaguesRepository {
  Future<Either<FailureResponse, SuccessResponse<List<LeagueEntity>>>>
      getLeagues();
}
