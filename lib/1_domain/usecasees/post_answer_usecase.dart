import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/repositories/post_answer_repository.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/core/response.dart';

class PostAnswerUsecase {
  final PostAnswerRepository questionRepository;

  PostAnswerUsecase({required this.questionRepository});
  Future<Either<FailureResponse, SuccessResponse<int>>> postAnswer(
      {required AnswerParamsSingletone answerParams}) async {
    return await questionRepository.getObject(answerParams);
  }
}
