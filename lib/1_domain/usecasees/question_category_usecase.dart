import 'package:dartz/dartz.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/repositories/question_category_repository.dart';
import 'package:quiz_league/core/response.dart';

class QuestionCategoryUsecase {
  final QuestionCategoryRepository questionCategoryRepository;
  QuestionCategoryUsecase({required this.questionCategoryRepository});
  Future<Either<FailureResponse, SuccessResponse<List<QuestionCategoryEntity>>>>
      getQuestionCategories() async {
    return await questionCategoryRepository.getQuestionCategories();
  }
}
