import 'package:dio/dio.dart';
import 'package:quiz_league/config/url_manager.dart';
import 'package:quiz_league/data/models/match_model/match_model.dart';

import 'package:retrofit/retrofit.dart';

part 'match_api.g.dart';

@RestApi(baseUrl: UrlManager.match)
abstract class MatchApi {
  factory MatchApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _MatchApi;

  @GET("/matches/")
  Future<List<MatchModel>> getMatchesTimeLines(@Query("date") String date);

  @GET("/{match_id}/")
  Future<MatchModel> getMatchDetail(@Path("match_id") int matchId);
}
