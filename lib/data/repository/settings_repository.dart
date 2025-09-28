import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quiz_league/data/apis/settings_api/settings_api.dart';
import 'package:quiz_league/data/models/settings_model/team_detail_model.dart';
import 'package:quiz_league/utility/error_response.dart';

class SettingsRepository {
  final SettingsApi settingsApi;

  SettingsRepository({required this.settingsApi});

  Future<Either<ErrorResponse, SettingsModel>> getSettings() async {
    try {
      final result = await settingsApi.getSettings();
      return Right(result);
    } on DioException catch (_) {
      return Left(ErrorResponse(errorMessage: "Error", statusCode: 400));
    }
  }
}
