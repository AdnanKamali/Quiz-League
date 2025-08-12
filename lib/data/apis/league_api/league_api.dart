import 'package:dio/dio.dart';
import 'package:quiz_league/config/url_manager.dart';
import 'package:quiz_league/data/models/team_model/team_detail_model.dart';

import 'package:retrofit/retrofit.dart';

part 'league_api.g.dart';

@RestApi(baseUrl: UrlManager.league)
abstract class LeagueApi {
  factory LeagueApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _LeagueApi;

  @GET("/{league_id}/teams/")
  Future<List<TeamDetailModel>> getTeams(@Path("league_id") int leagueId);
}
