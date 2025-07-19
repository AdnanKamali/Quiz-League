import 'package:dio/dio.dart';
import 'package:quiz_league/0_data/models/league_model/league_model.dart';
import 'package:quiz_league/0_data/models/match_info_model/match_info_model.dart';
import 'package:quiz_league/0_data/models/match_time_line_model/match_time_line_model.dart';
import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:quiz_league/config/url_manager.dart';
import 'package:retrofit/retrofit.dart';

part 'league_remote_datasource.g.dart';

@RestApi(baseUrl: UrlManager.league)
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
}
