import 'package:dartz/dartz.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/1_domain/data_types/interfaces/get_object_interface.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/core/response.dart';

class PostAnswerRepository
    implements GetObjectInterface<int, AnswerParamsSingletone> {
  final QuestionRemoteDatasourceRestClient questionRemoteDatasourceRestClient;
  PostAnswerRepository({required this.questionRemoteDatasourceRestClient});
  @override
  Future<Either<FailureResponse, SuccessResponse<int>>> getObject(
      AnswerParamsSingletone para) async {
    try {
      final result =
          await questionRemoteDatasourceRestClient.postAnswer(para.toJson());
      final response = SuccessResponse(result: result);
      return Right(response);
    } catch (e) {
      final failureResponse =
          FailureResponse(statusCode: 400, errorMessage: "Error");
      return Left(failureResponse);
    }
  }
}
