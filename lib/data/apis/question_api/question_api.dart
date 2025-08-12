import 'package:dio/dio.dart';
import 'package:quiz_league/config/url_manager.dart';
import 'package:quiz_league/data/models/answer_report_model/answer_report_model.dart';
import 'package:quiz_league/data/models/category_model/category_model.dart';

import 'package:quiz_league/data/models/question_model/question_model.dart';

import 'package:retrofit/retrofit.dart';

part 'question_api.g.dart';

@RestApi(baseUrl: UrlManager.question)
abstract class QuestionApi {
  factory QuestionApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _QuestionApi;

  @GET("/random_question/{leagueId}/{categoryId}/")
  Future<QuestionModel> getQuestion(
    @Path("leagueId") int leagueId,
    @Path("categoryId") int categoryId,
  );

  @GET("/categories/")
  Future<List<CategoryModel>> getCategories();

  @POST("/answer/")
  Future<AnswerReportModel> sendAnswerReport(
    @Body() AnswerReportModel answerReport,
  );
}
