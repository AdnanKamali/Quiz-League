import 'package:dio/dio.dart';
import 'package:quiz_league/0_data/models/question_model/question_model.dart';
import 'package:retrofit/retrofit.dart';

part 'question_remote_datasource.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:8000/api/v1/question")
abstract class QuestionRemoteDatasourceRestClient {
  factory QuestionRemoteDatasourceRestClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _QuestionRemoteDatasourceRestClient;

  @GET("/categories/")
  Future<List<QuestionCategoryModel>> getQuestionCategories();
  @GET("/random_question/{leagueId}/{categoryId}")
  Future<QuestionModel> getQuestion(
    @Path("leagueId") String leagueId,
    @Path("categoryId") String categoryId,
  );
}
