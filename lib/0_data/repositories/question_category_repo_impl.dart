import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/data_types/interfaces/get_list_interface.dart';
import 'package:quiz_league/core/response.dart';

class QuestionCategoryRepository
    implements GetListInterfaceWithoutPara<QuestionCategoryEntity> {
  final QuestionRemoteDatasourceRestClient questionRemoteDatasourceRestClient;
  QuestionCategoryRepository(
      {required this.questionRemoteDatasourceRestClient});

  @override
  Future<Either<FailureResponse, SuccessResponse<List<QuestionCategoryEntity>>>>
      getList() async {
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
