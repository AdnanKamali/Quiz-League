import 'package:json_annotation/json_annotation.dart';

part "team_player_model.g.dart";

@JsonSerializable()
class TeamPlayerModel {
  final int id;
  final String name;

  TeamPlayerModel({
    required this.id,
    required this.name,
  });

  factory TeamPlayerModel.fromJson(Map<String, dynamic> json) =>
      _$TeamPlayerModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamPlayerModelToJson(this);
}
