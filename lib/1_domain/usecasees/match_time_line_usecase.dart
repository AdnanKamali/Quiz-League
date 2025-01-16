import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/repositories/match_time_line_repo_impl.dart';
import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';

import 'package:quiz_league/core/response.dart';

class MatchTimeLineUsecase {
  final MatchTimeLineRepository matchTimeLineRepository;
  const MatchTimeLineUsecase({required this.matchTimeLineRepository});

  Future<Either<FailureResponse, SuccessResponse<List<MatchTimeLineEntity>>>>
      getMatchsTimeLine() async {
    return matchTimeLineRepository.getList();
  }
}
