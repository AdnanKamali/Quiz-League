import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/repositories/question_repo_impl.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/core/define_params/get_question_params.dart';
import 'package:quiz_league/core/response.dart';

class QuestionUsecase {
  final QuestionRepository questionRepository;

  QuestionUsecase({required this.questionRepository});
  Future<Either<FailureResponse, SuccessResponse<QuestionEntity>>> getQuestion(
      {required GetQuestionParams getQuestionParams}) async {
    return await questionRepository.getObject(getQuestionParams);
  }
}
