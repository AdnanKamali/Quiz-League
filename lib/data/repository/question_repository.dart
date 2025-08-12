import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quiz_league/data/apis/question_api/question_api.dart';
import 'package:quiz_league/data/models/answer_report_model/answer_report_model.dart';
import 'package:quiz_league/data/models/category_model/category_model.dart';
import 'package:quiz_league/data/models/question_model/question_model.dart';
import 'package:quiz_league/utility/error_handler.dart';
import 'package:quiz_league/utility/error_response.dart';

class QuestionRepository {
  final QuestionApi questionApi;

  QuestionRepository({required this.questionApi});

  Future<Either<ErrorResponse, QuestionModel>> getQuestion(
      {required int leagueId, required int categoryId}) async {
    try {
      final response = await questionApi.getQuestion(leagueId, categoryId);
      return Right(response);
    } on DioException catch (e) {
      return Left(errorHandler(e));
    }
  }

  Future<Either<ErrorResponse, List<CategoryModel>>> getCategories() async {
    try {
      final response = await questionApi.getCategories();
      return Right(response);
    } on DioException catch (e) {
      return Left(errorHandler(e));
    }
  }

  Future<Either<ErrorResponse, AnswerReportModel>> sendAnswerReport(
      {required AnswerReportModel answerReport}) async {
    try {
      final response = await questionApi.sendAnswerReport(answerReport);
      return Right(response);
    } on DioException catch (e) {
      return Left(errorHandler(e));
    }
  }
}
