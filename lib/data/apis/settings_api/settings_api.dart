import 'package:dio/dio.dart';
import 'package:quiz_league/config/url_manager.dart';
import 'package:quiz_league/data/models/settings_model/team_detail_model.dart';

import 'package:retrofit/retrofit.dart';

part 'settings_api.g.dart';

@RestApi(baseUrl: UrlManager.settings)
abstract class SettingsApi {
  factory SettingsApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _SettingsApi;

  @GET("/")
  Future<SettingsModel> getSettings();
}
