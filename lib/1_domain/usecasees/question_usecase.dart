import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/repositories/question_repository.dart';
import 'package:quiz_league/core/response.dart';

class QuestionUsecase {
  final QuestionRepository questionRepository;

  QuestionUsecase({required this.questionRepository});
  Future<Either<FailureResponse, SuccessResponse<QuestionEntity>>> getQuestion(
      {required int categoryId, required int leagueId}) async {
    return await questionRepository.getQuestion(
      leagueId: leagueId,
      categoryId: categoryId,
    );
  }
}
