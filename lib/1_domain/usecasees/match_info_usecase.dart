import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/1_domain/repositories/match_info_repository.dart';
import 'package:quiz_league/core/response.dart';

class MatchInfoUsecase {
  final MatchInfoRepository matchInfoRepository;

  MatchInfoUsecase({required this.matchInfoRepository});

  Future<Either<FailureResponse, SuccessResponse<MatchInfoEntity>>>
      getMatchInfo(String matchId) async {
    return await matchInfoRepository.getMatchInfo(matchId);
  }
}
