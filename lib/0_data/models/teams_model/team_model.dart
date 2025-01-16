import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';

part 'team_model.freezed.dart';
part 'team_model.g.dart';

@freezed
class TeamTableInfoModel extends TeamTableInfoEntity with _$TeamTableInfoModel {
  const factory TeamTableInfoModel({
    required int games,
    required int wins,
    required int lost,
    required int draws,
    required int diffrent,
  }) = _TeamTableInfoModel;

  factory TeamTableInfoModel.fromJson(Map<String, Object?> json) =>
      _$TeamTableInfoModelFromJson(json);
}

@freezed
class TeamModel extends TeamEntity with _$TeamModel {
  const factory TeamModel({
    required int id,
    required String name,
    required String logo,
  }) = _TeamModel;

  factory TeamModel.fromJson(Map<String, Object?> json) =>
      _$TeamModelFromJson(json);
}

@freezed
class TeamTableModel extends TeamTableEntity with _$TeamTableModel {
  const factory TeamTableModel({
    required int id,
    required String name,
    required String logo,
    required int points,
    @JsonKey(name: "table_info") required TeamTableInfoModel teamTableInfoModel,
  }) = _TeamTableModel;

  factory TeamTableModel.fromJson(Map<String, Object?> json) =>
      _$TeamTableModelFromJson(json);
}

class TeamPlayerModel extends TeamPlayerEntity {
  TeamPlayerModel({required super.name});
  factory TeamPlayerModel.fromJson(Map<String, Object?> json) =>
      TeamPlayerModel(name: json["name"] as String);
}
