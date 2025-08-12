import 'package:dio/dio.dart';
import 'package:quiz_league/config/url_manager.dart';
import 'package:quiz_league/data/models/team_model/team_player_model.dart';

import 'package:retrofit/retrofit.dart';

part 'team_player_api.g.dart';

@RestApi(baseUrl: UrlManager.team)
abstract class TeamPlayerApi {
  factory TeamPlayerApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _TeamPlayerApi;

  @GET("/{team_id}/players/")
  Future<List<TeamPlayerModel>> getPlayers(@Path("team_id") int teamId);
}
