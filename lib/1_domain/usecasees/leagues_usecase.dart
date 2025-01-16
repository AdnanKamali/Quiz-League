import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/repositories/leagues_repo_impl.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';
import 'package:quiz_league/core/response.dart';

class LeaguesUsecase {
  final LeaguesRepository leaguesRepository;
  const LeaguesUsecase({required this.leaguesRepository});

  Future<Either<FailureResponse, SuccessResponse<List<LeagueEntity>>>>
      getLeagues() async {
    return await leaguesRepository.getList();
  }
}
