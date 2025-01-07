import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';
import 'package:quiz_league/core/response.dart';

abstract class MatchTimeLineRepository {
  Future<Either<FailureResponse, SuccessResponse<List<MatchTimeLineEntity>>>>
      getMatchesTimeLine();
}
