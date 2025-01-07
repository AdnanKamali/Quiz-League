import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/0_data/models/teams_model/team_model.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';

part 'match_info_model.freezed.dart';
part 'match_info_model.g.dart';

@freezed
class MatchInfoModel extends MatchInfoEntity with _$MatchInfoModel {
  const factory MatchInfoModel({
    required int id,
    @JsonKey(name: "first_team") required TeamModel firstTeam,
    @JsonKey(name: "second_team") required TeamModel secondTeam,
  }) = _MatchInfoModel;

  factory MatchInfoModel.fromJson(Map<String, Object?> json) =>
      _$MatchInfoModelFromJson(json);
}
