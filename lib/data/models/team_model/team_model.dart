import 'package:json_annotation/json_annotation.dart';

part "team_model.g.dart";

@JsonSerializable()
class TeamModel {
  final int id;
  final String name;
  final String logo;

  TeamModel({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamModelToJson(this);
}
