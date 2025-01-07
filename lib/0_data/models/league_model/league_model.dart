import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';

part 'league_model.freezed.dart';
part 'league_model.g.dart';

@freezed
class LeagueModel extends LeagueEntity with _$LeagueModel {
  const factory LeagueModel({
    required int id,
    required String logo,
    required String name,
  }) = _LeagueModel;

  factory LeagueModel.fromJson(Map<String, Object?> json) =>
      _$LeagueModelFromJson(json);
}
