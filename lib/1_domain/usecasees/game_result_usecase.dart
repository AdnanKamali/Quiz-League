import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/repositories/game_result_repository.dart';
import 'package:quiz_league/0_data/repositories/surrender_repository.dart';
import 'package:quiz_league/core/response.dart';
import 'package:quiz_league/game_result_params.dart';

class GameResultUsecase {
  final GameResultRepository gameResultRepository;
  final SurrenderRepository surrenderRepository;

  GameResultUsecase({
    required this.gameResultRepository,
    required this.surrenderRepository,
  });

  Future<Either<FailureResponse, SuccessResponse<int>>> postSurrender(
      GameResultParams param) {
    return surrenderRepository.getObject(param);
  }

  Future<Either<FailureResponse, SuccessResponse<int>>> postGameResult(
      int matchId) {
    return gameResultRepository.getObject(matchId);
  }
}
