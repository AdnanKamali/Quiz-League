import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/core/response.dart';

abstract class QuestionCategoryRepository {
  Future<Either<FailureResponse, SuccessResponse<List<QuestionCategoryEntity>>>>
      getQuestionCategories();
}
