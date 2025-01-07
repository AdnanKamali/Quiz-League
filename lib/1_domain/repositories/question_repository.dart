import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/core/response.dart';

abstract class QuestionRepository {
  Future<Either<FailureResponse, SuccessResponse<QuestionEntity>>> getQuestion(
    int categoryId,
    int leagueId,
  );
}
