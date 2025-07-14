import 'package:dio/dio.dart';
import 'package:quiz_league/0_data/models/match_info_model/match_info_model.dart';
import 'package:retrofit/retrofit.dart';

part 'match_remote_datasource.g.dart';

@RestApi(baseUrl: )
abstract class MatchRemoteDatasourceRestClient {
  factory MatchRemoteDatasourceRestClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _MatchRemoteDatasourceRestClient;

  @GET("/matches/")
  Future<List<MatchInfoModel>> getMatchesTimeLines();

  @GET("/{match_id}/")
  Future<MatchInfoModel> getMatchDetail(@Path("match_id") int matchId);
}
