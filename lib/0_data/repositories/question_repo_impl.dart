import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/repositories/get_object_interface.dart';
import 'package:quiz_league/core/define_params/get_question_params.dart';
import 'package:quiz_league/core/response.dart';

class QuestionRepository
    implements GetObjectInterface<QuestionEntity, GetQuestionParams> {
  final QuestionRemoteDatasourceRestClient questionRemoteDatasourceRestClient;

  QuestionRepository({required this.questionRemoteDatasourceRestClient});

  @override
  Future<Either<FailureResponse, SuccessResponse<QuestionEntity>>> getObject(
      GetQuestionParams getQuestionParams) async {
    try {
      final result = await questionRemoteDatasourceRestClient.getQuestion(
        "${getQuestionParams.leagueId}",
        "${getQuestionParams.categoryId}",
      );
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
