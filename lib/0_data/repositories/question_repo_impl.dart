import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/repositories/question_repository.dart';
import 'package:quiz_league/core/response.dart';

class QuestionRepoImpl implements QuestionRepository {
  final QuestionRemoteDatasourceRestClient questionRemoteDatasourceRestClient;

  QuestionRepoImpl({required this.questionRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<QuestionEntity>>> getQuestion(
      int categoryId, int leagueId) async {
    try {
      final result = await questionRemoteDatasourceRestClient.getQuestion(
        "$categoryId",
        "$leagueId",
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
