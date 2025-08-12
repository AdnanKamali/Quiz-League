import 'package:json_annotation/json_annotation.dart';

part "league_model.g.dart";

@JsonSerializable()
class LeagueModel {
  final int id;
  final String name;
  final String logo;

  LeagueModel({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory LeagueModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueModelToJson(this);
}
