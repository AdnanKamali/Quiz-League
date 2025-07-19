import 'package:dio/dio.dart';
import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:quiz_league/config/url_manager.dart';
import 'package:retrofit/retrofit.dart';

part 'team_remote_datasource.g.dart';

@RestApi(baseUrl: UrlManager.team)
abstract class TeamRemoteDatasourceRestClient {
  factory TeamRemoteDatasourceRestClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _TeamRemoteDatasourceRestClient;

  @GET("/{team_id}/")
  Future<TeamModel> getTeamDetail(@Path("team_id") int teamId);
}
