import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/repositories/question_repository.dart';
import 'package:quiz_league/core/response.dart';

class QuestionRepoImpl implements QuestionRepository {
  final QuestionRemoteDatasourceRestClient questionRemoteDatasourceRestClient;

  QuestionRepoImpl({required this.questionRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<QuestionEntity>>> getQuestion({
    required int leagueId,
    required int categoryId,
  }) async {
    try {
      final result = await questionRemoteDatasourceRestClient.getQuestion(
        "$leagueId",
        "$categoryId",
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
