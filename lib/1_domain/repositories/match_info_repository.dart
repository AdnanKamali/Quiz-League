import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/core/response.dart';

abstract class MatchInfoRepository {
  Future<Either<FailureResponse, SuccessResponse<MatchInfoEntity>>>
      getMatchInfo(String matchId);
}
