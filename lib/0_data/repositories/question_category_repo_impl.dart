import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/repositories/question_category_repository.dart';
import 'package:quiz_league/core/response.dart';

class QuestionCategoryRepoImpl implements QuestionCategoryRepository {
  final QuestionRemoteDatasourceRestClient questionRemoteDatasourceRestClient;
  QuestionCategoryRepoImpl({required this.questionRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<List<QuestionCategoryEntity>>>>
      getQuestionCategories() async {
    try {
      final result =
          await questionRemoteDatasourceRestClient.getQuestionCategories();
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
