import 'package:dio/dio.dart';
import 'package:quiz_league/0_data/models/league_model/league_model.dart';
import 'package:quiz_league/0_data/models/match_info_model/match_info_model.dart';
import 'package:quiz_league/0_data/models/match_time_line_model/match_time_line_model.dart';
import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:retrofit/retrofit.dart';

part 'league_remote_datasource.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:8000/api/v1/league")
abstract class LeagueRemoteDatasourceRestClient {
  factory LeagueRemoteDatasourceRestClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _LeagueRemoteDatasourceRestClient;

  @GET("/leagues/")
  Future<List<LeagueModel>> getLeagues();
  @GET("/teams/{leagueId}")
  Future<List<TeamTableModel>> getTeams(@Path("leagueId") String leagueId);
  @GET("/players/{teamId}")
  Future<List<TeamPlayerModel>> getPlayers(@Path("teamId") String teamId);
  @GET("/match/{matchId}")
  Future<MatchInfoModel> getMatchInfo(@Path("matchId") String matchId);
  @GET("/matches-time-line/")
  Future<List<MatchTimeLineModel>> getMatchesTimeLine();
  @POST("/surrender/")
  Future<int> postSurrender(@Body() Map<String, dynamic> body);
  @POST("/game_result/{matchId}/")
  Future<int> postGameResult(@Path("matchId") String matchId);
}
